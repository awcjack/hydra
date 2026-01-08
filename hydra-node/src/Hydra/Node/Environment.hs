{-# LANGUAGE RecordWildCards #-}

module Hydra.Node.Environment where

import Hydra.Prelude

import Data.Aeson (object, withObject, (.!=), (.=), (.:), (.:?))
import Data.Time (NominalDiffTime)
import Hydra.Node.DepositPeriod (DepositPeriod)
import Hydra.Tx.ContestationPeriod (ContestationPeriod)
import Hydra.Tx.Crypto (HydraKey, SigningKey)
import Hydra.Tx.HeadParameters (HeadParameters (..))
import Hydra.Tx.OnChainId (OnChainId)
import Hydra.Tx.Party (HasParty (..), Party)
import Numeric.Natural (Natural)
import Test.QuickCheck (choose)

data Environment = Environment
  { party :: Party
  -- ^ This is the p_i from the paper
  , -- XXX: In the long run we would not want to keep the signing key in memory,
    -- i.e. have an 'Effect' for signing or so.
    signingKey :: SigningKey HydraKey
  , otherParties :: [Party]
  , -- XXX: Improve naming
    participants :: [OnChainId]
  , contestationPeriod :: ContestationPeriod
  , depositPeriod :: DepositPeriod
  , configuredPeers :: Text
  -- ^ Configured peers for the network layer, used for comparison on etcd errors.
  , snapshotBatchSize :: Natural
  -- ^ Number of transactions to accumulate before requesting a snapshot.
  -- Default is 10. Set to 1 for legacy behavior (snapshot per transaction).
  , snapshotInterval :: NominalDiffTime
  -- ^ Maximum time interval between snapshots when there are pending transactions.
  -- Default is 100ms. Snapshots are requested if this interval passes AND localTxs > 0.
  }
  deriving stock (Generic, Show, Eq)

-- Custom JSON instances to handle NominalDiffTime serialization
instance ToJSON Environment where
  toJSON Environment{..} =
    object
      [ "party" .= party
      , "signingKey" .= signingKey
      , "otherParties" .= otherParties
      , "participants" .= participants
      , "contestationPeriod" .= contestationPeriod
      , "depositPeriod" .= depositPeriod
      , "configuredPeers" .= configuredPeers
      , "snapshotBatchSize" .= snapshotBatchSize
      , "snapshotInterval" .= (realToFrac snapshotInterval :: Double)
      ]

instance FromJSON Environment where
  parseJSON = withObject "Environment" $ \o -> do
    party <- o .: "party"
    signingKey <- o .: "signingKey"
    otherParties <- o .: "otherParties"
    participants <- o .: "participants"
    contestationPeriod <- o .: "contestationPeriod"
    depositPeriod <- o .: "depositPeriod"
    configuredPeers <- o .: "configuredPeers"
    snapshotBatchSize <- o .:? "snapshotBatchSize" .!= 10
    snapshotIntervalSeconds <- o .:? "snapshotInterval" .!= (0.1 :: Double)
    let snapshotInterval = realToFrac snapshotIntervalSeconds
    pure Environment{..}

instance Arbitrary Environment where
  arbitrary = do
    party <- arbitrary
    signingKey <- arbitrary
    otherParties <- arbitrary
    participants <- arbitrary
    contestationPeriod <- arbitrary
    depositPeriod <- arbitrary
    configuredPeers <- arbitrary
    -- snapshotBatchSize must be >= 1 per JSON schema
    snapshotBatchSizeInt <- choose (1, 100) :: Gen Int
    let snapshotBatchSize = fromIntegral snapshotBatchSizeInt
    -- Generate snapshot interval values that roundtrip cleanly through Double
    -- Use multiples of 0.0625 (1/16 second) which are exactly representable
    snapshotIntervalUnits <- choose (1, 160) :: Gen Int  -- 0.0625s to 10s
    let snapshotInterval = realToFrac (fromIntegral snapshotIntervalUnits * 0.0625 :: Double)
    pure Environment{..}
  shrink = genericShrink

instance HasParty Environment where
  getParty = party

-- | Make 'HeadParameters' that are consistent with the given 'Environment'.
mkHeadParameters :: Environment -> HeadParameters
mkHeadParameters Environment{party, otherParties, contestationPeriod} =
  HeadParameters{contestationPeriod, parties = party : otherParties}
