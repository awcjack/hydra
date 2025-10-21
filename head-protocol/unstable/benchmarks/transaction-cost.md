--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-21 05:20:04.482247395 UTC |
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
| 1| 5837 | 10.19 | 3.22 | 0.51 |
| 2| 6037 | 12.53 | 3.97 | 0.55 |
| 3| 6238 | 14.31 | 4.52 | 0.57 |
| 5| 6638 | 18.41 | 5.80 | 0.63 |
| 10| 7646 | 29.14 | 9.19 | 0.79 |
| 43| 14279 | 99.14 | 30.99 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 913 | 4.36 | 2.33 | 0.24 |
| 5| 1279 | 6.41 | 3.60 | 0.28 |
| 10| 2180 | 12.13 | 7.25 | 0.40 |
| 54| 10065 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 56 | 528 | 24.42 | 7.12 | 0.42 |
| 2 | 114 | 636 | 34.34 | 9.90 | 0.53 |
| 3 | 169 | 747 | 42.60 | 12.24 | 0.62 |
| 4 | 228 | 858 | 54.13 | 15.43 | 0.74 |
| 5 | 284 | 969 | 64.48 | 18.28 | 0.85 |
| 6 | 338 | 1081 | 66.08 | 19.09 | 0.87 |
| 7 | 395 | 1196 | 79.53 | 22.81 | 1.01 |
| 8 | 452 | 1303 | 89.34 | 25.41 | 1.11 |
| 9 | 504 | 1414 | 92.94 | 26.90 | 1.16 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1807 | 24.00 | 7.62 | 0.48 |
| 2| 1916 | 25.47 | 8.70 | 0.50 |
| 3| 2105 | 28.31 | 10.14 | 0.54 |
| 5| 2367 | 31.34 | 12.32 | 0.60 |
| 10| 3152 | 42.11 | 18.66 | 0.76 |
| 38| 7468 | 96.28 | 52.41 | 1.63 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 613 | 22.53 | 7.30 | 0.41 |
| 2| 837 | 25.36 | 8.75 | 0.46 |
| 3| 932 | 26.82 | 9.84 | 0.48 |
| 5| 1115 | 26.98 | 11.18 | 0.50 |
| 10| 1908 | 38.71 | 17.81 | 0.68 |
| 40| 6550 | 97.66 | 54.19 | 1.62 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 693 | 27.51 | 8.47 | 0.46 |
| 2| 788 | 30.94 | 10.07 | 0.51 |
| 3| 1001 | 31.61 | 10.96 | 0.53 |
| 5| 1275 | 35.08 | 13.26 | 0.59 |
| 10| 1911 | 43.55 | 18.95 | 0.72 |
| 35| 5747 | 94.16 | 49.84 | 1.52 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 625 | 33.12 | 9.94 | 0.52 |
| 2| 807 | 35.89 | 11.39 | 0.56 |
| 3| 958 | 37.88 | 12.61 | 0.59 |
| 5| 1271 | 42.57 | 15.26 | 0.66 |
| 10| 1967 | 53.46 | 21.62 | 0.82 |
| 29| 4967 | 99.47 | 47.13 | 1.51 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5820 | 27.08 | 9.08 | 0.69 |
| 2| 5981 | 37.20 | 12.53 | 0.80 |
| 3| 6035 | 44.90 | 15.07 | 0.89 |
| 4| 6356 | 56.01 | 18.93 | 1.02 |
| 5| 6355 | 62.78 | 21.08 | 1.09 |
| 6| 6573 | 73.71 | 24.80 | 1.21 |
| 7| 6777 | 85.15 | 28.79 | 1.34 |
| 8| 6822 | 88.71 | 29.84 | 1.38 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5835 | 18.75 | 6.26 | 0.60 |
| 10 | 5 | 284 | 6004 | 29.35 | 10.43 | 0.73 |
| 10 | 20 | 1139 | 6513 | 58.66 | 22.07 | 1.07 |
| 10 | 30 | 1707 | 6853 | 80.04 | 30.46 | 1.32 |
| 10 | 40 | 2277 | 7193 | 99.40 | 38.15 | 1.54 |
| 10 | 40 | 2276 | 7193 | 99.66 | 38.24 | 1.55 |

