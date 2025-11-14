# Hydra Codebase Exploration Summary

## Project Overview

**Hydra** is the Layer-2 scalability solution for Cardano, implementing the Hydra Head protocol. It provides high-speed, low-cost transactions through a coordinated Head protocol that operates off-chain while maintaining security via Cardano blockchain anchoring.

Key repositories:
- **hydra-node** (57 Haskell files): Main Head protocol implementation
- **hydra-tx** (28 Haskell files): Transaction construction and handling  
- **hydra-plutus** (19 Haskell files): On-chain smart contracts
- Plus supporting modules: hydra-cardano-api, hydra-chain-observer, hydra-cluster, etc.

---

## 1. Overall Project Structure

### Main Components
```
/home/user/hydra/
├── hydra-node/          - Core Head protocol node
│   ├── src/Hydra/       - Main business logic (57 files)
│   ├── exe/             - Executable
│   ├── test/            - Test suite
│   └── testlib/         - Test utilities
├── hydra-tx/            - Transaction construction (28 files)
│   ├── src/Hydra/       - TX building and evaluation
│   └── test/            - TX tests
├── hydra-plutus/        - Plutus smart contracts (19 files)
│   ├── src/             - Validator scripts
│   ├── validators/      - Compiled validators
│   └── test/            - Property tests
├── hydra-cardano-api/   - Cardano integration layer
├── hydra-chain-observer - Chain state monitoring
├── hydra-cluster/       - Testing and clustering utilities
├── hydra-prelude/       - Common prelude library
├── hydra-tui/           - Terminal user interface
├── docs/                - Documentation and architecture
└── demo/                - Demo and example configs
```

### Build System
- Haskell project using **Cabal** and **Nix**
- Multi-package workspace with interdependencies
- Test, benchmark, and integration test suites

---

## 2. Transaction Handling Code

### Core Transaction Types

**Location**: `/home/user/hydra/hydra-tx/src/Hydra/Tx/`

#### IsTx Type Class
**File**: `/home/user/hydra/hydra-tx/src/Hydra/Tx/IsTx.hs`
- Abstract interface for transaction types
- Associated types: `TxIdType`, `TxOutType`, `UTxOType`, `ValueType`
- Methods: `txId`, `balance`, `hashUTxO`, `utxoFromTx`, `outputsOfUTxO`, `withoutUTxO`
- Supports both Cardano Tx and mock transaction implementations
- Enables protocol independence from concrete transaction types

#### Transaction Type Implementations
**Location**: `/home/user/hydra/hydra-tx/src/Hydra/Tx/`

1. **Init** (`Init.hs`)
   - Initializes Head state with parameters
   - Contains head parameters and participant list
   - Creates initial state token (ST)

2. **Commit** (`Commit.hs`) - IMPORTANT for datum handling
   - Commits UTxO to Head
   - Stores committed UTxO as **datum** in output
   - Uses Initial validator script
   - Handles redeemer generation and execution unit setup

3. **CollectCom** (`CollectCom.hs`)
   - Collects all commits
   - Verifies all participants committed
   - Creates Open state with collected UTxOs

4. **Close/Contest/Fanout** (`Close.hs`, `Contest.hs`, `Fanout.hs`)
   - Close: Closes Head based on snapshot
   - Contest: Contest with newer snapshot if fraudulent close detected
   - Fanout: Distribute funds back to participants

5. **Increment/Decrement** (`Increment.hs`, `Decrement.hs`)
   - Incremental commit/decommit operations
   - Allows dynamic participation in open Head

6. **Deposit/Recover** (`Deposit.hs`, `Recover.hs`)
   - Deposit additional funds into Head
   - Recovery mechanism for failed operations

### Transaction Submission Pipeline

**Location**: `/home/user/hydra/hydra-node/src/Hydra/Chain/`

#### Submission Interface
- **File**: `Chain.hs`
  - `submitTx :: MonadThrow m => tx -> m ()`
  - Abstract interface for chain interaction

#### Direct Chain Backend (Main Implementation)
**File**: `Direct/Handlers.hs`
- **SubmitTx type**: `type SubmitTx m = Tx -> m ()`
- Core function: `mkChain` assembles transaction handlers
- Transforms `PostChainTx` (protocol requests) → Cardano `Tx` → on-chain effects

#### Cardano Client Integration
**File**: `CardanoClient.hs`
- `submitTxToNodeLocal`: Sends tx to local cardano-node via socket
- Error handling: `SubmitTxValidationError`
- Validation error types tracked for diagnosis

#### Other Backends
- **Blockfrost**: Cloud chain indexer integration
- **Offline**: Mock implementation for testing

### Transaction Observation & Event Sourcing

**File**: `/home/user/hydra/hydra-tx/src/Hydra/Tx/Observe.hs`

- `observeHeadTx`: Parse on-chain transactions to protocol events
- Observation types:
  - `InitObservation`, `CommitObservation`, `CollectComObservation`
  - `CloseObservation`, `ContestObservation`, `FanoutObservation`
  - `IncrementObservation`, `DecrementObservation`

---

## 3. Datum Processing and Storage

### Datum Definition & Usage

**Files**: 
- `/home/user/hydra/hydra-plutus/src/Hydra/Contract/HeadState.hs` (on-chain)
- `/home/user/hydra/hydra-tx/src/Hydra/Tx/Commit.hs` (off-chain construction)

#### State Datum Types (On-Chain)

From `HeadState.hs`:
```haskell
data State
  = Initial { contestationPeriod, parties, headId }
  | Open { OpenDatum with utxo, version, etc. }
  | Closed { ClosedDatum with contestationDeadline, etc. }
```

#### Commit Datum Storage Pattern

In `Commit.hs`:
```haskell
commitTx :: 
  ScriptRegistry -> HeadId -> Party -> CommitBlueprintTx Tx ->
  (TxIn, TxOut CtxUTxO, Hash PaymentKey) -> Tx
```

Key operations:
1. Blueprint transaction used as base
2. Committed UTxO encoded as **datum** in output
3. Initial validator script referenced
4. Redeemers constructed with zeroed execution units (`ExUnits 0 0`)
5. Metadata added for transaction identification

#### Datum Conversion & Processing

**File**: `/home/user/hydra/hydra-tx/src/Hydra/Tx/Snapshot.hs`

- `Snapshot` data type contains UTxO set hashes
- Uses `PlutusLedgerApi.V3.toData` for datum serialization
- `getSignableRepresentation` creates CBOR binary for signing
- UTxO hashed via `hashUTxO` for snapshot verification

#### Transaction Output Representation

- UTxOs stored in `UTxOType tx` (associated type from `IsTx`)
- Cardano implementation: Haskell's `Cardano.Api.UTxO` type
- Lazy evaluation allows streaming processing
- Maps TxIn to TxOut with Value and optional Datum

---

## 4. Script Evaluation/Execution

### Plutus Script Validators

**Location**: `/home/user/hydra/hydra-plutus/src/Hydra/Contract/`

#### Main Validators

1. **Head Validator** (`Head.hs`)
   - **Type**: `State → Input → ScriptContext → Bool`
   - Validates all Head state transitions
   - Matches on: `(oldState, input)` pairs
   - Examples:
     - `(Initial, CollectCom)`: Verify all commits collected
     - `(Open, Close)`: Validate close with snapshot
     - `(Closed, Contest)`: Validate contest with newer snapshot
     - `(Closed, Fanout)`: Distribute funds correctly

2. **Commit Validator** (`Commit.hs`)
   - Validates participant commits
   - Checks PT (Participation Token) presence
   - Verifies UTxO reimbursement

3. **Initial Validator** (`Initial.hs`)
   - Locks initial state before Head creation
   - Validates Init transaction consumption

4. **HeadTokens Validator** (`HeadTokens.hs`)
   - Minting policy for Head tokens
   - Ensures token creation/burning rules

### Script Execution & Cost Evaluation

**Location**: `/home/user/hydra/hydra-tx/src/Hydra/Ledger/Cardano/Evaluate.hs`

#### Transaction Evaluation API
```haskell
evaluateTx :: Tx -> UTxO -> Either EvaluationError EvaluationReport
evaluateTx' :: ExecutionUnits -> Tx -> UTxO -> Either EvaluationError EvaluationReport
```

#### Execution Units Tracking

```haskell
data ExecutionUnits = ExecutionUnits
  { executionMemory :: Natural    -- Plutus memory units
  , executionSteps :: Natural     -- CPU steps
  }
```

**Budget Limits** (from `pparams`):
- Max TX memory: 14,000,000 units
- Max TX CPU: 10,000,000,000 steps
- Max block memory: 62,000,000
- Max block CPU: 40,000,000,000

#### Evaluation Report
```haskell
type EvaluationReport = 
  Map ScriptWitnessIndex (Either ScriptExecutionError ExecutionUnits)
```

- Per-script execution results
- Tracks both failures and resource usage
- Supports phase-1 (structural) and phase-2 (plutus) validation

#### Cost Model Fixtures

**Files**: Built-in cost models for:
- PlutusV2 (main set of costs)
- PlutusV3 (current mainnet, enhanced opcodes)
- Model costs for operations like:
  - Data operations (serialization, hashing)
  - Arithmetic operations
  - List/Map operations
  - String handling

---

## 5. Memory Management Patterns

### Event Sourcing & Persistence

**Location**: `/home/user/hydra/hydra-node/src/Hydra/`

#### Event Log Management
**File**: `Persistence.hs`

```haskell
data Persistence a m = Persistence
  { save :: ToJSON a => a -> m ()
  , load :: FromJSON a => m (Maybe a)
  }

data PersistenceIncremental a m = PersistenceIncremental
  { append :: ToJSON a => a -> m ()
  , source :: FromJSON a => ConduitT () a (ResourceT m) ()
  }
```

Key features:
- JSON encoding for durability
- **Incremental append** pattern to avoid full re-writes
- Thread-safe via `MVar` mutex
- Atomic file writes via `writeBinaryFileDurableAtomic`

#### File-Based Event Store
**File**: `Events/FileBased.hs`

```haskell
mkFileBasedEventStore ::
  FilePath -> PersistenceIncremental e IO -> IO (EventStore e IO)
```

- Tracks last seen event ID via `TVar`
- Streams events via Conduit for lazy evaluation
- Event rotation support for log management
- Filter already-processed events

#### Event Rotation
**File**: `Events/Rotation.hs`

- Checkpoint mechanism for event log truncation
- Prevents unbounded log growth
- Rotates old logs to timestamped files

### State Management

**Location**: `/home/user/hydra/hydra-node/src/Hydra/`

#### Node State
**File**: `Node/State.hs`

```haskell
data NodeState tx = NodeState
  { headState :: HeadState tx
  , pendingDeposits :: PendingDeposits tx
  , currentSlot :: ChainSlot
  }

type PendingDeposits tx = Map (TxIdType tx) (Deposit tx)
```

- Immutable state snapshots
- Deposits tracked via Map for efficient lookup
- Chain state history maintained separately

#### Ledger Implementation
**File**: `Ledger.hs`

```haskell
data Ledger tx = Ledger
  { applyTransactions :: ChainSlot -> UTxOType tx -> [tx] -> 
      Either (tx, ValidationError) (UTxOType tx)
  }
```

- Pure function-based state updates
- Transactions applied to UTxO set
- Validation errors include failing transaction

### Key Data Structures

1. **Maps**: Used for UTxO, deposits, script registries
   - `Data.Map.Strict` for lazy evaluation control
   - O(log n) operations on large sets

2. **Sets**: Used for transaction inputs, outputs, participants
   - `Data.Set` for deduplication and membership tests

3. **Conduit Streams**: Used in event/persistence layers
   - Resource management via `ResourceT`
   - Lazy streaming to avoid loading full logs
   - Chunked processing of large datasets

4. **TVars & MVars**: Thread-safe mutable state
   - Event ID tracking in event store
   - Rotation coordination
   - Atomic operations for concurrent updates

### Garbage Collection

**File**: `Node/Run.hs`
```haskell
import System.Mem (performGC)
```
- Explicit GC calls available for control
- Event log rotation triggers potential cleanup

### Memory-Critical Sections

1. **Event Log Loading** (`getEvents`, `loadAll`)
   - Comment in Persistence.hs: "XXX: Deprecate this to avoid large memory usage"
   - Indicates potential memory issues with full log loads
   - Recommends streaming approach instead

2. **Transaction Application**
   - UTxO operations (fold over inputs/outputs)
   - Snapshot hashing requires full UTxO traversal
   - Script execution creates intermediate data structures

3. **State Aggregation**
   - `HeadLogic.aggregateNodeState` reconstructs full state
   - Folds over all historical events
   - Used during node startup/recovery

---

## Key Files Reference Table

### Transaction Handling
| File | Purpose |
|------|---------|
| `hydra-tx/src/Hydra/Tx/IsTx.hs` | Transaction type class definition |
| `hydra-tx/src/Hydra/Tx/Commit.hs` | Commit TX construction & datum handling |
| `hydra-tx/src/Hydra/Tx/Snapshot.hs` | Snapshot data & serialization |
| `hydra-node/src/Hydra/Chain/Direct/Handlers.hs` | TX submission pipeline |
| `hydra-node/src/Hydra/Chain/CardanoClient.hs` | Cardano node integration |

### Script Execution
| File | Purpose |
|------|---------|
| `hydra-plutus/src/Hydra/Contract/Head.hs` | Main Head validator logic |
| `hydra-plutus/src/Hydra/Contract/Commit.hs` | Commit validator |
| `hydra-plutus/src/Hydra/Contract/HeadState.hs` | Datum type definitions |
| `hydra-tx/src/Hydra/Ledger/Cardano/Evaluate.hs` | Script cost evaluation |

### Datum & Data Processing
| File | Purpose |
|------|---------|
| `hydra-tx/src/Hydra/Tx/Commit.hs` | Datum creation in commits |
| `hydra-tx/src/Hydra/Tx/Snapshot.hs` | Snapshot datum & CBOR serialization |
| `hydra-tx/src/Hydra/Tx/Observe.hs` | Parse on-chain data to events |
| `hydra-plutus/src/Hydra/Contract/HeadState.hs` | On-chain datum structures |

### Memory & State Management
| File | Purpose |
|------|---------|
| `hydra-node/src/Hydra/Persistence.hs` | Incremental persistence with streaming |
| `hydra-node/src/Hydra/Events/FileBased.hs` | Event store implementation |
| `hydra-node/src/Hydra/Events/Rotation.hs` | Log rotation for unbounded growth |
| `hydra-node/src/Hydra/Node/State.hs` | Node state structure |
| `hydra-node/src/Hydra/Ledger.hs` | Ledger abstraction |
| `hydra-node/src/Hydra/Node/Run.hs` | Node startup & GC management |

---

## Notable Patterns & Design Decisions

1. **Event Sourcing**: All state changes tracked as immutable events
2. **Abstract Ledger**: Protocol independent via `IsTx` and `Ledger` typeclasses
3. **Incremental Persistence**: Append-only logs prevent unbounded file rewrites
4. **Conduit Streams**: Lazy evaluation in persistence layers
5. **Pure State Logic**: `HeadLogic` functions are pure, enabling testing
6. **Script Safety**: Explicit cost tracking via execution units
7. **Immutable State**: `NodeState` and `HeadState` are pure records
8. **Mutex-Protected**: File operations use `MVar` for thread safety

