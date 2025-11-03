{-# LANGUAGE DuplicateRecordFields #-}

-- | Connection registry for managing bounded per-connection message queues
-- This replaces the broadcast TChan approach which caused memory leaks
module Hydra.API.ConnectionRegistry where

import Hydra.Prelude

import Control.Concurrent.Class.MonadSTM (
  TBQueue,
  TVar,
  modifyTVar',
  newTBQueueIO,
  newTVarIO,
  readTVar,
  tryWriteTBQueue,
  writeTVar,
 )
import Data.Map.Strict qualified as Map
import Data.UUID (UUID)
import Data.UUID.V4 qualified as UUID

-- | Unique identifier for each connection
type ConnectionId = UUID

-- | Registry of active connections with their message queues
data ConnectionRegistry msg = ConnectionRegistry
  { connections :: TVar (Map ConnectionId (TBQueue msg))
  , maxQueueSize :: Natural
  , droppedMessages :: TVar Integer
  }

-- | Create a new connection registry
-- Queue size of 1000 per connection prevents unbounded memory growth
newConnectionRegistry :: Natural -> IO (ConnectionRegistry msg)
newConnectionRegistry maxSize = do
  conns <- newTVarIO Map.empty
  dropped <- newTVarIO 0
  pure ConnectionRegistry
    { connections = conns
    , maxQueueSize = maxSize
    , droppedMessages = dropped
    }

-- | Register a new connection and return its ID and queue
registerConnection :: ConnectionRegistry msg -> IO (ConnectionId, TBQueue msg)
registerConnection registry = do
  connId <- UUID.nextRandom
  queue <- newTBQueueIO (fromIntegral $ maxQueueSize registry)
  atomically $ modifyTVar' (connections registry) (Map.insert connId queue)
  pure (connId, queue)

-- | Unregister a connection (cleanup when client disconnects)
unregisterConnection :: ConnectionRegistry msg -> ConnectionId -> IO ()
unregisterConnection registry connId =
  atomically $ modifyTVar' (connections registry) (Map.delete connId)

-- | Broadcast a message to all registered connections
-- Uses tryWriteTBQueue to avoid blocking - if a connection's queue is full,
-- the message is dropped for that connection only (prevents one slow client
-- from blocking all others)
broadcastMessage :: ConnectionRegistry msg -> msg -> IO ()
broadcastMessage registry msg = do
  (conns, droppedCount) <- atomically $ do
    connMap <- readTVar (connections registry)
    results <- forM (Map.elems connMap) $ \queue -> do
      success <- tryWriteTBQueue queue msg
      pure $ if success then 0 else 1
    let dropped = sum results
    when (dropped > 0) $
      modifyTVar' (droppedMessages registry) (+ fromIntegral dropped)
    pure (Map.size connMap, dropped)

  -- Note: In production, you may want to log when messages are dropped
  when (droppedCount > 0) $
    putStrLn $ "Warning: Dropped message for " <> show droppedCount <> " connection(s) out of " <> show conns

-- | Get the count of currently active connections
getConnectionCount :: ConnectionRegistry msg -> IO Int
getConnectionCount registry =
  atomically $ Map.size <$> readTVar (connections registry)

-- | Get total number of dropped messages (monitoring metric)
getDroppedMessageCount :: ConnectionRegistry msg -> IO Integer
getDroppedMessageCount registry =
  atomically $ readTVar (droppedMessages registry)

-- | Reset dropped message counter (useful for monitoring)
resetDroppedMessageCount :: ConnectionRegistry msg -> IO ()
resetDroppedMessageCount registry =
  atomically $ writeTVar (droppedMessages registry) 0
