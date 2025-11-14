# Hydra Codebase - Detailed File Reference with Absolute Paths

## Critical Transaction & Datum Files

### Transaction Type Abstractions
1. `/home/user/hydra/hydra-tx/src/Hydra/Tx/IsTx.hs`
   - Abstract `IsTx` type class for transaction interface
   - Associated types: `TxIdType`, `TxOutType`, `UTxOType`, `ValueType`
   - Enables protocol independence from concrete transaction implementations

### Commit & Datum Handling
2. `/home/user/hydra/hydra-tx/src/Hydra/Tx/Commit.hs`
   - **PRIMARY DATUM STORAGE FILE**
   - `commitTx` function encodes committed UTxO as datum
   - Handles redeemer generation and script witnessing
   - Creates outputs with datum locked by Initial validator

3. `/home/user/hydra/hydra-tx/src/Hydra/Tx/Snapshot.hs`
   - `Snapshot` data type and serialization
   - CBOR encoding via `getSignableRepresentation`
   - UTxO hashing for snapshot verification

### Transaction Construction Files
- `/home/user/hydra/hydra-tx/src/Hydra/Tx/Init.hs` - Head initialization
- `/home/user/hydra/hydra-tx/src/Hydra/Tx/CollectCom.hs` - Commit collection
- `/home/user/hydra/hydra-tx/src/Hydra/Tx/Close.hs` - Head closure
- `/home/user/hydra/hydra-tx/src/Hydra/Tx/Contest.hs` - Dispute resolution
- `/home/user/hydra/hydra-tx/src/Hydra/Tx/Fanout.hs` - Fund distribution
- `/home/user/hydra/hydra-tx/src/Hydra/Tx/Increment.hs` - Dynamic commits
- `/home/user/hydra/hydra-tx/src/Hydra/Tx/Decrement.hs` - Dynamic decommits
- `/home/user/hydra/hydra-tx/src/Hydra/Tx/Deposit.hs` - Fund deposits
- `/home/user/hydra/hydra-tx/src/Hydra/Tx/Recover.hs` - Recovery mechanism

### Transaction Builder
4. `/home/user/hydra/hydra-tx/src/Hydra/Ledger/Cardano/Builder.hs`
   - `unsafeBuildTransaction` - Main transaction construction
   - `addTxInsSpending` - Input management
   - `mintTokens`, `burnTokens` - Token operations

---

## Script Evaluation & Plutus Files

### Plutus Validator Scripts (On-Chain)
1. `/home/user/hydra/hydra-plutus/src/Hydra/Contract/Head.hs`
   - **MAIN VALIDATOR LOGIC**
   - `headValidator :: State → Input → ScriptContext → Bool`
   - Validates all Head state transitions

2. `/home/user/hydra/hydra-plutus/src/Hydra/Contract/HeadState.hs`
   - **DATUM TYPE DEFINITIONS**
   - State types: `Initial`, `Open`, `Closed`
   - Input/Redeemer types: `CollectCom`, `Abort`, `Increment`, etc.

3. `/home/user/hydra/hydra-plutus/src/Hydra/Contract/Commit.hs`
   - Commit validator script

4. `/home/user/hydra/hydra-plutus/src/Hydra/Contract/Initial.hs`
   - Initial state validator

5. `/home/user/hydra/hydra-plutus/src/Hydra/Contract/HeadTokens.hs`
   - Minting policy for Participation Tokens (PTs) and State Tokens (ST)

### Script Evaluation & Cost Analysis
6. `/home/user/hydra/hydra-tx/src/Hydra/Ledger/Cardano/Evaluate.hs`
   - **SCRIPT EXECUTION & COST EVALUATION**
   - `evaluateTx` - Main evaluation function
   - `evaluateTx'` - Configurable evaluation
   - `EvaluationReport` - Per-script cost tracking
   - `checkBudget` - Budget validation
   - Plutus V2 & V3 cost models (lines 632-813)
   - Budget limits: 14M memory, 10B CPU steps

---

## Transaction Submission Pipeline

### Chain Interface & Submission
1. `/home/user/hydra/hydra-node/src/Hydra/Chain.hs`
   - `Chain` type class with `submitTx` method
   - Abstract interface for chain interaction

2. `/home/user/hydra/hydra-node/src/Hydra/Chain/Direct/Handlers.hs`
   - **TRANSACTION SUBMISSION HANDLERS**
   - `type SubmitTx m = Tx -> m ()`
   - `mkChain` - Creates chain component
   - Transforms `PostChainTx` to on-chain transactions
   - Processes on-chain events

3. `/home/user/hydra/hydra-node/src/Hydra/Chain/CardanoClient.hs`
   - `submitTxToNodeLocal` - Sends to cardano-node
   - Socket-based communication
   - Error handling: `SubmitTxValidationError`

### Chain Backends
- `/home/user/hydra/hydra-node/src/Hydra/Chain/Direct.hs` - Direct cardano-node
- `/home/user/hydra/hydra-node/src/Hydra/Chain/Blockfrost.hs` - Cloud indexer
- `/home/user/hydra/hydra-node/src/Hydra/Chain/Offline.hs` - Mock backend

### Transaction Observation
4. `/home/user/hydra/hydra-tx/src/Hydra/Tx/Observe.hs`
   - `observeHeadTx` - Parse transactions to events
   - Observation types for all protocol transitions

---

## Datum & Data Processing

### Datum-Related Files
1. `/home/user/hydra/hydra-plutus/src/Hydra/Contract/HeadState.hs` (lines 23-36)
   - Datum type definitions
   - `State` variants: `Initial`, `Open`, `Closed`

2. `/home/user/hydra/hydra-tx/src/Hydra/Tx/Commit.hs` (lines 46-72)
   - Datum creation and encoding

3. `/home/user/hydra/hydra-tx/src/Hydra/Tx/Snapshot.hs` (lines 45-80)
   - Snapshot datum structure
   - CBOR serialization

### UTxO Handling
- `/home/user/hydra/hydra-tx/src/Hydra/Ledger/Cardano/Time.hs` - Time conversion
- `/home/user/hydra/hydra-tx/src/Hydra/Chain/ChainState.hs` - Chain state tracking

---

## Memory Management & Persistence

### Event Sourcing & Persistence
1. `/home/user/hydra/hydra-node/src/Hydra/Persistence.hs` (lines 64-100)
   - **KEY MEMORY MANAGEMENT**
   - `Persistence` - Full load/save (lines 35-62)
   - `PersistenceIncremental` - Streaming append (lines 65-105)
   - `loadAll` - WARNING: "avoid large memory usage" (lines 73-75)
   - Atomic file writes: `writeBinaryFileDurableAtomic`

2. `/home/user/hydra/hydra-node/src/Hydra/Events.hs`
   - `EventSource`, `EventSink` abstractions
   - `getEvents` - Stream all events
   - `putEventsToSinks` - Distribute events

3. `/home/user/hydra/hydra-node/src/Hydra/Events/FileBased.hs`
   - **FILE-BASED EVENT STORE**
   - `mkFileBasedEventStore` - Creates event store
   - Event ID tracking via `TVar`
   - Filter already-processed events
   - Conduit-based streaming

4. `/home/user/hydra/hydra-node/src/Hydra/Events/Rotation.hs`
   - Event log rotation mechanism
   - Prevents unbounded log growth
   - Checkpoint support

### State Management
5. `/home/user/hydra/hydra-node/src/Hydra/Node/State.hs`
   - `NodeState` record structure
   - `PendingDeposits` - Map-based deposit tracking
   - `Deposit` data type

6. `/home/user/hydra/hydra-node/src/Hydra/Ledger.hs`
   - `Ledger` type class
   - `applyTransactions` - Pure state transition
   - `collectTransactions` - Validation error recovery

### Node Initialization & GC
7. `/home/user/hydra/hydra-node/src/Hydra/Node/Run.hs` (lines 1-80)
   - Node startup and configuration
   - Imports `System.Mem (performGC)` - Manual GC trigger
   - Event store initialization
   - Ledger setup

---

## Core Logic & State Machine

### Head Protocol Logic
1. `/home/user/hydra/hydra-node/src/Hydra/HeadLogic.hs`
   - **CORE STATE MACHINE**
   - Pure function-based event handling
   - State transitions and effect generation
   - Input handling from clients, chain, network

2. `/home/user/hydra/hydra-node/src/Hydra/HeadLogic/State.hs`
   - HeadState variants and properties
   - Open/Closed/Initial/Idle states

3. `/home/user/hydra/hydra-node/src/Hydra/HeadLogic/Input.hs`
   - Input types for state machine

4. `/home/user/hydra/hydra-node/src/Hydra/HeadLogic/Outcome.hs`
   - `Effect` and `StateChanged` types
   - `Outcome` - Decision + effects

5. `/home/user/hydra/hydra-node/src/Hydra/HeadLogic/Error.hs`
   - Logic error types

### State Events
6. `/home/user/hydra/hydra-node/src/Hydra/HeadLogic/StateEvent.hs`
   - `StateEvent` - Serializable state snapshots

---

## Network & Protocol

### Network Message Handling
- `/home/user/hydra/hydra-node/src/Hydra/Network.hs` - Network abstraction
- `/home/user/hydra/hydra-node/src/Hydra/Network/Message.hs` - Message types
- `/home/user/hydra/hydra-node/src/Hydra/Network/Etcd.hs` - Etcd backend
- `/home/user/hydra/hydra-node/src/Hydra/Node/Network.hs` - Network config

### API & Client Communication
- `/home/user/hydra/hydra-node/src/Hydra/API/Server.hs` - WebSocket/HTTP server
- `/home/user/hydra/hydra-node/src/Hydra/API/ClientInput.hs` - Client requests
- `/home/user/hydra/hydra-node/src/Hydra/API/ServerOutput.hs` - Server responses
- `/home/user/hydra/hydra-node/src/Hydra/API/HTTPServer.hs` - HTTP endpoint
- `/home/user/hydra/hydra-node/src/Hydra/API/WSServer.hs` - WebSocket endpoint

---

## Logging & Monitoring

### Logging Infrastructure
- `/home/user/hydra/hydra-node/src/Hydra/Logging.hs` - Tracer interface
- `/home/user/hydra/hydra-node/src/Hydra/Logging/Messages.hs` - Log messages
- `/home/user/hydra/hydra-node/src/Hydra/Logging/Monitoring.hs` - Metrics
- `/home/user/hydra/hydra-node/src/Hydra/PersistenceLog.hs` - Persistence events

---

## Testing & Utilities

### Test Fixtures & Generators
- `/home/user/hydra/hydra-cluster/src/Hydra/Cluster/Fixture.hs` - Test fixtures
- `/home/user/hydra/hydra-cluster/src/Hydra/Generator.hs` - Test data generation

### Cardano Integration
- `/home/user/hydra/hydra-cardano-api/src/` - Cardano API wrapper
- `/home/user/hydra/hydra-tx/src/Hydra/Ledger/Cardano.hs` - Ledger implementation

### Chain Observation
- `/home/user/hydra/hydra-chain-observer/src/` - Chain state monitoring

---

## Summary of Key Directories

| Directory | Files | Purpose |
|-----------|-------|---------|
| `/home/user/hydra/hydra-node/src/Hydra/` | 57 | Core node logic & state machine |
| `/home/user/hydra/hydra-tx/src/Hydra/` | 28 | Transaction construction & evaluation |
| `/home/user/hydra/hydra-plutus/src/Hydra/Contract/` | 19 | Plutus validator scripts |
| `/home/user/hydra/hydra-cardano-api/src/` | ~30 | Cardano API bindings |

---

## Memory-Critical Code Sections

### Known Memory Hotspots
1. **Event Log Loading**
   - File: `/home/user/hydra/hydra-node/src/Hydra/Persistence.hs` (lines 73-75)
   - Function: `loadAll`
   - Issue: Loads all events into memory
   - Status: Marked for deprecation

2. **State Aggregation**
   - File: `/home/user/hydra/hydra-node/src/Hydra/HeadLogic.hs`
   - Function: `aggregateNodeState`
   - Process: Reconstructs state by folding all historical events

3. **UTxO Processing**
   - Files: Various Tx files (Commit.hs, Close.hs, etc.)
   - Operation: Large UTxO set hashing and manipulation
   - Pattern: Map/fold operations on transaction outputs

4. **Conduit Streaming (Good Practice)**
   - File: `/home/user/hydra/hydra-node/src/Hydra/Events/FileBased.hs` (lines 31-37)
   - Pattern: Uses Conduit for lazy evaluation
   - Benefit: Streaming processing without full load

---

## File Metrics

- Total Haskell files: 104 core files
- Total lines of code: ~10,000+ (core modules)
- Main architecture: Event-sourced, pure functional state machine
- Language: Haskell (GHC)
- Build: Cabal + Nix

