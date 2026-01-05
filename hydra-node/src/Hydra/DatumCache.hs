{-# LANGUAGE DerivingStrategies #-}
{-# OPTIONS_GHC -Wno-orphans #-}

-- | A cache for inline datums to reduce memory usage in the UTxO set.
--
-- When UTxOs with inline datums are held in memory, the full datum data
-- consumes significant space. This module provides a mechanism to:
--
-- 1. Extract inline datums from TxOuts and store them in a separate cache
-- 2. Replace inline datums with their hashes in the UTxO set
-- 3. Restore inline datums from the cache when needed for transaction validation
--
-- This optimization is particularly beneficial for Hydra heads that hold
-- many UTxOs with large inline datums for extended periods.
--
-- == Memory Optimization via Pruning
--
-- The cache can be pruned to remove datums that are no longer needed.
-- Call 'pruneCache' with the current UTxO set to remove datums that are
-- not referenced by any current UTxO. This keeps memory usage proportional
-- to the number of UTxOs with inline datums, rather than growing unbounded.
module Hydra.DatumCache (
  -- * Types
  DatumCache (..),

  -- * Type class for abstract datum caching
  HasDatumCache (..),

  -- * Construction
  emptyCache,

  -- * Operations
  lookupDatum,
  insertDatum,

  -- * Cache Management
  pruneCache,
  pruneCacheWithLimit,
  cacheSize,

  -- * UTxO Operations
  stripInlineDatumsFromUTxO,
  restoreInlineDatumsToUTxO,

  -- * TxOut Operations
  stripInlineDatum,
  restoreInlineDatum,

  -- * Datum Hash Extraction
  extractDatumHashes,
) where

import Hydra.Prelude

import Cardano.Api (
  SerialiseAsCBOR (..),
  proxyToAsType,
 )
import Cardano.Api.UTxO qualified as UTxO
import Data.Aeson (object, withObject, (.:), (.=))
import Data.Aeson qualified as Aeson
import Data.Aeson.Types (Parser)
import Data.Map.Strict qualified as Map
import Data.Set qualified as Set
import Hydra.Cardano.Api (
  Hash,
  HashableScriptData,
  ScriptData,
  TxIn,
  TxOut,
  UTxO,
  hashScriptDataBytes,
 )
import Hydra.Cardano.Api qualified as Api
import Numeric.Natural (Natural)

-- | A strict cache mapping datum hashes to their full datum content.
-- Uses a strict Map to prevent thunk buildup.
--
-- The cache stores all datums that have been extracted from UTxOs.
-- Use 'pruneCache' periodically to remove datums that are no longer
-- referenced by any current UTxO.
newtype DatumCache = DatumCache
  { unDatumCache :: Map (Hash ScriptData) HashableScriptData
  }
  deriving stock (Eq, Show, Generic)

instance Semigroup DatumCache where
  DatumCache a <> DatumCache b = DatumCache (a <> b)

-- | ToJSON instance for DatumCache.
-- Serializes the cache as an object with "entries" containing a list of datum entries.
instance ToJSON DatumCache where
  toJSON (DatumCache cache) =
    object
      [ "entries" .= map encodeCacheEntry (Map.toList cache)
      ]
   where
    encodeCacheEntry :: (Hash ScriptData, HashableScriptData) -> Aeson.Value
    encodeCacheEntry (hash, datum) =
      object
        [ "hash" .= hash
        , "datum" .= encodeBase16 (serialiseToCBOR datum)
        ]

-- | FromJSON instance for DatumCache.
-- Deserializes from an object with "entries" containing a list of datum entries.
instance FromJSON DatumCache where
  parseJSON = withObject "DatumCache" $ \o -> do
    entries <- o .: "entries" <|> pure []
    datums <- mapM decodeCacheEntry entries
    pure $ DatumCache (Map.fromList datums)
   where
    decodeCacheEntry :: Aeson.Value -> Parser (Hash ScriptData, HashableScriptData)
    decodeCacheEntry = withObject "DatumCacheEntry" $ \entry -> do
      hash <- entry .: "hash"
      datumHex <- entry .: "datum"
      datumBytes <- decodeBase16 datumHex
      datum <-
        either (fail . show) pure $
          deserialiseFromCBOR (proxyToAsType (Proxy @HashableScriptData)) datumBytes
      pure (hash, datum)

-- | Arbitrary instance for DatumCache (for testing).
-- Generates empty caches since HashableScriptData doesn't have a direct Arbitrary instance.
instance Arbitrary DatumCache where
  arbitrary = pure emptyCache
  shrink _ = []

-- | Type class for abstracting datum cache operations over different UTxO types.
-- This allows HeadLogic to work generically while only applying datum optimizations
-- for UTxO types that support it (i.e., the real Cardano UTxO type).
class HasDatumCache utxo where
  -- | Strip inline datums from a UTxO set and return the stripped set with a cache.
  stripDatums :: utxo -> (utxo, DatumCache)

  -- | Restore inline datums to a UTxO set using the provided cache.
  restoreDatums :: DatumCache -> utxo -> utxo

  -- | Extract all datum hashes referenced by the UTxO set.
  -- Used for cache pruning - only datums with these hashes need to be kept.
  getDatumHashes :: utxo -> Set (Hash ScriptData)

-- | Instance for the real Cardano UTxO type - actually performs datum stripping.
instance HasDatumCache UTxO where
  stripDatums = stripInlineDatumsFromUTxO
  restoreDatums = restoreInlineDatumsToUTxO
  getDatumHashes = extractDatumHashes

-- | Create an empty datum cache.
emptyCache :: DatumCache
emptyCache = DatumCache Map.empty

-- | Look up a datum by its hash.
lookupDatum :: Hash ScriptData -> DatumCache -> Maybe HashableScriptData
lookupDatum hash (DatumCache cache) = Map.lookup hash cache

-- | Insert a datum into the cache.
insertDatum :: Hash ScriptData -> HashableScriptData -> DatumCache -> DatumCache
insertDatum hash datum (DatumCache cache) =
  DatumCache $! Map.insert hash datum cache

-- | Prune the cache to only keep datums referenced by the given set of hashes.
-- This removes datums that are no longer needed, reducing memory usage.
--
-- Call this after confirming a snapshot with the datum hashes from the
-- confirmed UTxO set.
pruneCache :: Set (Hash ScriptData) -> DatumCache -> DatumCache
pruneCache keepHashes (DatumCache cache) =
  DatumCache $! Map.restrictKeys cache keepHashes

-- | Prune the cache with a size limit. First restricts to only the given hashes
-- (UTxO-aligned pruning), then if the cache still exceeds the limit, evicts
-- entries until the limit is satisfied.
--
-- The eviction strategy is deterministic: entries are sorted by their hash
-- and the oldest (lowest hash values) are evicted first. This ensures
-- consistent behavior across nodes.
--
-- A limit of 0 means unlimited (no size-based eviction).
pruneCacheWithLimit :: Natural -> Set (Hash ScriptData) -> DatumCache -> DatumCache
pruneCacheWithLimit maxSize keepHashes cache
  | maxSize == 0 = prunedCache
  | currentSize <= fromIntegral maxSize = prunedCache
  | otherwise = evictToLimit maxSize prunedCache
 where
  prunedCache = pruneCache keepHashes cache
  currentSize = cacheSize prunedCache

-- | Evict entries from the cache until the size is at or below the limit.
-- Uses deterministic eviction: entries are sorted by hash and lowest hashes
-- are evicted first.
evictToLimit :: Natural -> DatumCache -> DatumCache
evictToLimit maxSize (DatumCache cache)
  | Map.size cache <= fromIntegral maxSize = DatumCache cache
  | otherwise =
      let entries = Map.toAscList cache -- Sorted by hash
          entriesToKeep = fromIntegral maxSize
          keptEntries = drop (length entries - entriesToKeep) entries
       in DatumCache $! Map.fromList keptEntries

-- | Get the number of datums in the cache.
cacheSize :: DatumCache -> Int
cacheSize (DatumCache cache) = Map.size cache

-- | Extract all datum hashes referenced by UTxOs in the set.
-- This includes both inline datums (by computing their hash) and datum hash references.
extractDatumHashes :: UTxO -> Set (Hash ScriptData)
extractDatumHashes utxo =
  Set.fromList $ mapMaybe (extractHash . snd) (UTxO.toList utxo)
 where
  extractHash :: TxOut Api.CtxUTxO -> Maybe (Hash ScriptData)
  extractHash (Api.TxOut _ _ datum _) =
    case datum of
      Api.TxOutDatumHash h -> Just h
      Api.TxOutDatumInline sd -> Just (hashScriptDataBytes sd)
      _ -> Nothing

-- | Strip inline datums from all TxOuts in a UTxO set, replacing them with
-- datum hashes. Returns the modified UTxO and a cache containing the extracted datums.
stripInlineDatumsFromUTxO :: UTxO -> (UTxO, DatumCache)
stripInlineDatumsFromUTxO utxo =
  let pairs = UTxO.toList utxo
      (strippedPairs, cache) = foldl' stripAndCache ([], emptyCache) pairs
   in (UTxO.fromList strippedPairs, cache)
 where
  stripAndCache ::
    ([(TxIn, TxOut Api.CtxUTxO)], DatumCache) ->
    (TxIn, TxOut Api.CtxUTxO) ->
    ([(TxIn, TxOut Api.CtxUTxO)], DatumCache)
  stripAndCache (!acc, !cache) (txIn, txOut) =
    case stripInlineDatum txOut of
      (txOut', Nothing) -> ((txIn, txOut') : acc, cache)
      (txOut', Just (hash, datum)) ->
        let !cache' = insertDatum hash datum cache
         in ((txIn, txOut') : acc, cache')

-- | Restore inline datums to all TxOuts in a UTxO set using the provided cache.
restoreInlineDatumsToUTxO :: DatumCache -> UTxO -> UTxO
restoreInlineDatumsToUTxO cache utxo =
  UTxO.fromList $ map (fmap (restoreInlineDatum cache)) (UTxO.toList utxo)

-- | Strip an inline datum from a TxOut, replacing it with a datum hash.
-- Returns the modified TxOut and optionally the hash and original datum.
-- If the TxOut doesn't have an inline datum, returns it unchanged.
stripInlineDatum ::
  TxOut ctx ->
  (TxOut Api.CtxUTxO, Maybe (Hash ScriptData, HashableScriptData))
stripInlineDatum (Api.TxOut addr value datum refScript) =
  case datum of
    Api.TxOutDatumInline sd ->
      let !hash = hashScriptDataBytes sd
          -- Convert inline datum to hash-only reference
          strippedDatum = Api.TxOutDatumHash hash
       in (Api.TxOut addr value strippedDatum refScript, Just (hash, sd))
    -- For other datum types, just adjust the context
    Api.TxOutDatumNone ->
      (Api.TxOut addr value Api.TxOutDatumNone refScript, Nothing)
    Api.TxOutDatumHash h ->
      (Api.TxOut addr value (Api.TxOutDatumHash h) refScript, Nothing)
    -- Note: TxOutSupplementalDatum is only for CtxTx, handle gracefully
    _ ->
      (Api.TxOut addr value Api.TxOutDatumNone refScript, Nothing)

-- | Restore an inline datum to a TxOut using the provided cache.
-- If the TxOut has a datum hash that's in the cache, the inline datum is restored.
-- Otherwise, the TxOut is returned unchanged.
restoreInlineDatum :: DatumCache -> TxOut ctx -> TxOut Api.CtxUTxO
restoreInlineDatum cache (Api.TxOut addr value datum refScript) =
  case datum of
    Api.TxOutDatumHash hash ->
      case lookupDatum hash cache of
        Just sd ->
          -- Restore the inline datum from cache
          Api.TxOut addr value (Api.TxOutDatumInline sd) refScript
        Nothing ->
          -- Hash not in cache, keep as datum hash in CtxUTxO
          Api.TxOut addr value (Api.TxOutDatumHash hash) refScript
    -- Other datum types pass through unchanged
    Api.TxOutDatumNone ->
      Api.TxOut addr value Api.TxOutDatumNone refScript
    Api.TxOutDatumInline sd ->
      Api.TxOut addr value (Api.TxOutDatumInline sd) refScript
    _ ->
      Api.TxOut addr value Api.TxOutDatumNone refScript
