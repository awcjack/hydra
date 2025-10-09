--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-09 09:03:24.012124678 UTC |
| _Max. memory units_ | 14000000 |
| _Max. CPU units_ | 10000000000 |
| _Max. tx size (kB)_ | 16384 |

## Script summary

| Name   | Hash | Size (Bytes) 
| :----- | :--- | -----------: 
| νInitial | c8a101a5c8ac4816b0dceb59ce31fc2258e387de828f02961d2f2045 | 2652 | 
| νCommit | 61458bc2f297fff3cc5df6ac7ab57cefd87763b0b7bd722146a1035c | 685 | 
| νHead | a1442faf26d4ec409e2f62a685c1d4893f8d6bcbaf7bcb59d6fa1340 | 14599 | 
| μHead | fd173b993e12103cd734ca6710d364e17120a5eb37a224c64ab2b188* | 5284 | 
| νDeposit | ae01dade3a9c346d5c93ae3ce339412b90a0b8f83f94ec6baa24e30c | 1102 | 

* The minting policy hash is only usable for comparison. As the script is parameterized, the actual script is unique per head.

## `Init` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5836 | 10.55 | 3.35 | 0.52 |
| 2| 6037 | 12.46 | 3.94 | 0.55 |
| 3| 6236 | 14.31 | 4.52 | 0.57 |
| 5| 6643 | 18.43 | 5.81 | 0.63 |
| 10| 7647 | 29.47 | 9.30 | 0.79 |
| 43| 14281 | 98.97 | 30.93 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1282 | 6.41 | 3.60 | 0.28 |
| 10| 2172 | 12.13 | 7.25 | 0.40 |
| 54| 10067 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.24 | 7.32 | 0.43 |
| 2 | 114 | 636 | 33.33 | 9.64 | 0.52 |
| 3 | 169 | 747 | 41.13 | 11.88 | 0.60 |
| 4 | 228 | 858 | 49.82 | 14.40 | 0.69 |
| 5 | 285 | 969 | 58.05 | 16.74 | 0.78 |
| 6 | 336 | 1081 | 70.30 | 20.14 | 0.91 |
| 7 | 396 | 1192 | 74.60 | 21.53 | 0.96 |
| 8 | 449 | 1303 | 89.33 | 25.46 | 1.11 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1819 | 23.92 | 7.60 | 0.48 |
| 2| 1978 | 26.96 | 9.09 | 0.52 |
| 3| 2084 | 26.94 | 9.77 | 0.53 |
| 5| 2449 | 32.68 | 12.69 | 0.61 |
| 10| 3183 | 40.24 | 18.16 | 0.75 |
| 38| 7340 | 92.47 | 51.36 | 1.59 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 623 | 22.80 | 7.37 | 0.42 |
| 2| 719 | 22.52 | 7.93 | 0.42 |
| 3| 927 | 25.07 | 9.31 | 0.46 |
| 5| 1305 | 31.06 | 12.34 | 0.55 |
| 10| 1973 | 38.44 | 17.72 | 0.68 |
| 42| 6696 | 97.25 | 55.43 | 1.63 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 669 | 27.47 | 8.46 | 0.46 |
| 2| 878 | 29.86 | 9.81 | 0.50 |
| 3| 988 | 31.57 | 10.95 | 0.53 |
| 5| 1274 | 37.58 | 13.96 | 0.61 |
| 10| 2142 | 46.35 | 19.82 | 0.76 |
| 37| 6148 | 99.43 | 52.68 | 1.60 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 684 | 33.79 | 10.15 | 0.53 |
| 2| 812 | 35.85 | 11.38 | 0.56 |
| 3| 892 | 37.20 | 12.40 | 0.58 |
| 5| 1293 | 43.35 | 15.49 | 0.67 |
| 10| 2056 | 53.94 | 21.78 | 0.83 |
| 30| 4874 | 98.53 | 47.45 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5818 | 27.13 | 9.10 | 0.69 |
| 2| 6021 | 37.00 | 12.47 | 0.80 |
| 3| 5993 | 43.81 | 14.66 | 0.87 |
| 4| 6287 | 55.02 | 18.54 | 1.01 |
| 5| 6432 | 63.76 | 21.48 | 1.10 |
| 6| 6303 | 61.66 | 20.62 | 1.07 |
| 7| 6665 | 79.63 | 26.83 | 1.28 |
| 8| 6994 | 94.72 | 31.98 | 1.45 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.38 | 6.48 | 0.61 |
| 10 | 1 | 57 | 5868 | 21.41 | 7.28 | 0.63 |
| 10 | 5 | 285 | 6005 | 28.46 | 10.13 | 0.72 |
| 10 | 10 | 569 | 6174 | 39.51 | 14.45 | 0.85 |
| 10 | 20 | 1139 | 6513 | 59.10 | 22.22 | 1.07 |
| 10 | 39 | 2222 | 7162 | 98.49 | 37.73 | 1.53 |

