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
module Hydra.DatumCache (
  -- * Types
  DatumCache (..),

  -- * Type class for abstract datum caching
  HasDatumCache (..),

  -- * Construction
  emptyCache,

  -- * Operations
  insertDatum,
  lookupDatum,
  deleteDatum,
  cacheSize,

  -- * UTxO Operations
  extractDatumsFromUTxO,
  stripInlineDatumsFromUTxO,
  restoreInlineDatumsToUTxO,

  -- * TxOut Operations
  stripInlineDatum,
  restoreInlineDatum,
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

-- | A strict cache mapping datum hashes to their full datum content.
-- Uses a strict Map to prevent thunk buildup.
newtype DatumCache = DatumCache
  { unDatumCache :: Map (Hash ScriptData) HashableScriptData
  }
  deriving stock (Eq, Show, Generic)

instance Semigroup DatumCache where
  DatumCache a <> DatumCache b = DatumCache (a <> b)

instance Monoid DatumCache where
  mempty = emptyCache

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
      datum <- either (fail . show) pure $
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

-- | Instance for the real Cardano UTxO type - actually performs datum stripping.
instance HasDatumCache UTxO where
  stripDatums = stripInlineDatumsFromUTxO
  restoreDatums = restoreInlineDatumsToUTxO

-- | Create an empty datum cache.
emptyCache :: DatumCache
emptyCache = DatumCache Map.empty

-- | Insert a datum into the cache. The hash is computed from the datum.
-- Returns the hash and the updated cache.
insertDatum :: HashableScriptData -> DatumCache -> (Hash ScriptData, DatumCache)
insertDatum datum (DatumCache cache) =
  let !hash = hashScriptDataBytes datum
      !cache' = Map.insert hash datum cache
   in (hash, DatumCache cache')

-- | Look up a datum by its hash.
lookupDatum :: Hash ScriptData -> DatumCache -> Maybe HashableScriptData
lookupDatum hash (DatumCache cache) = Map.lookup hash cache

-- | Delete a datum from the cache.
deleteDatum :: Hash ScriptData -> DatumCache -> DatumCache
deleteDatum hash (DatumCache cache) = DatumCache (Map.delete hash cache)

-- | Get the number of datums in the cache.
cacheSize :: DatumCache -> Int
cacheSize (DatumCache cache) = Map.size cache

-- | Extract all inline datums from a UTxO set into a cache.
-- This does not modify the UTxO set, only builds the cache.
extractDatumsFromUTxO :: UTxO -> DatumCache
extractDatumsFromUTxO utxo =
  foldl' extractFromTxOut emptyCache (UTxO.toList utxo)
 where
  extractFromTxOut :: DatumCache -> (TxIn, TxOut ctx) -> DatumCache
  extractFromTxOut cache (_, txOut) =
    case extractInlineDatum txOut of
      Nothing -> cache
      Just datum -> snd $ insertDatum datum cache

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
        let !cache' = DatumCache $ Map.insert hash datum (unDatumCache cache)
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

-- | Extract the inline datum from a TxOut, if present.
extractInlineDatum :: TxOut ctx -> Maybe HashableScriptData
extractInlineDatum (Api.TxOut _ _ datum _) =
  case datum of
    Api.TxOutDatumInline sd -> Just sd
    _ -> Nothing
