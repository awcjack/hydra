--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-24 05:21:32.400272296 UTC |
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
| 1| 5840 | 10.66 | 3.39 | 0.52 |
| 2| 6035 | 13.16 | 4.19 | 0.55 |
| 3| 6239 | 14.88 | 4.72 | 0.58 |
| 5| 6640 | 18.64 | 5.88 | 0.64 |
| 10| 7644 | 29.12 | 9.18 | 0.79 |
| 43| 14282 | 99.04 | 30.96 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 741 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1283 | 6.41 | 3.60 | 0.28 |
| 10| 2180 | 12.13 | 7.25 | 0.40 |
| 54| 10074 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.46 | 7.13 | 0.42 |
| 2 | 114 | 636 | 34.30 | 9.88 | 0.53 |
| 3 | 170 | 747 | 43.80 | 12.53 | 0.63 |
| 4 | 226 | 862 | 52.28 | 14.94 | 0.72 |
| 5 | 283 | 969 | 59.27 | 17.00 | 0.79 |
| 6 | 340 | 1081 | 64.87 | 18.84 | 0.86 |
| 7 | 395 | 1192 | 73.69 | 21.27 | 0.95 |
| 8 | 451 | 1303 | 80.42 | 23.28 | 1.03 |
| 9 | 504 | 1414 | 89.08 | 25.80 | 1.12 |
| 10 | 560 | 1525 | 99.84 | 28.84 | 1.23 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1804 | 24.29 | 7.69 | 0.48 |
| 2| 1882 | 24.47 | 8.41 | 0.49 |
| 3| 2014 | 25.87 | 9.47 | 0.52 |
| 5| 2413 | 31.07 | 12.26 | 0.60 |
| 10| 3307 | 43.40 | 19.05 | 0.78 |
| 41| 7729 | 97.85 | 54.87 | 1.68 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 635 | 22.54 | 7.30 | 0.41 |
| 2| 765 | 24.31 | 8.47 | 0.44 |
| 3| 897 | 25.52 | 9.47 | 0.46 |
| 5| 1135 | 28.04 | 11.48 | 0.51 |
| 10| 2038 | 41.16 | 18.47 | 0.71 |
| 41| 6791 | 99.37 | 55.33 | 1.65 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 643 | 29.17 | 8.91 | 0.48 |
| 2| 796 | 30.94 | 10.07 | 0.51 |
| 3| 1005 | 31.53 | 10.94 | 0.53 |
| 5| 1172 | 36.35 | 13.57 | 0.59 |
| 10| 2047 | 47.81 | 20.17 | 0.77 |
| 34| 5575 | 92.27 | 48.63 | 1.49 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 694 | 33.87 | 10.16 | 0.53 |
| 2| 806 | 35.85 | 11.38 | 0.56 |
| 3| 947 | 37.95 | 12.63 | 0.59 |
| 5| 1301 | 43.25 | 15.47 | 0.67 |
| 10| 1946 | 52.74 | 21.40 | 0.82 |
| 30| 5018 | 99.99 | 47.91 | 1.52 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5810 | 27.16 | 9.12 | 0.69 |
| 2| 5991 | 35.99 | 12.09 | 0.79 |
| 3| 6205 | 46.45 | 15.73 | 0.91 |
| 4| 6228 | 55.00 | 18.48 | 1.00 |
| 5| 6373 | 61.49 | 20.67 | 1.08 |
| 6| 6556 | 71.60 | 24.18 | 1.19 |
| 7| 6703 | 79.43 | 26.73 | 1.28 |
| 8| 7034 | 94.89 | 32.10 | 1.46 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.19 | 6.41 | 0.61 |
| 10 | 5 | 285 | 6004 | 28.90 | 10.28 | 0.72 |
| 10 | 10 | 569 | 6173 | 39.95 | 14.60 | 0.85 |
| 10 | 20 | 1137 | 6511 | 59.73 | 22.44 | 1.08 |
| 10 | 30 | 1707 | 6853 | 80.48 | 30.61 | 1.32 |
| 10 | 38 | 2163 | 7126 | 96.88 | 37.08 | 1.51 |

