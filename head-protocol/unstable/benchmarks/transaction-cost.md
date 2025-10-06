--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-06 07:56:11.695751262 UTC |
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
| 1| 5836 | 10.35 | 3.28 | 0.51 |
| 2| 6035 | 12.23 | 3.86 | 0.54 |
| 3| 6239 | 14.47 | 4.57 | 0.57 |
| 5| 6641 | 18.58 | 5.86 | 0.63 |
| 10| 7651 | 29.38 | 9.27 | 0.79 |
| 43| 14282 | 98.73 | 30.85 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 741 | 3.38 | 1.73 | 0.22 |
| 3| 917 | 4.36 | 2.33 | 0.24 |
| 5| 1280 | 6.41 | 3.60 | 0.28 |
| 10| 2170 | 12.13 | 7.25 | 0.40 |
| 54| 10070 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 56 | 524 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 640 | 33.25 | 9.63 | 0.52 |
| 3 | 168 | 751 | 40.00 | 11.63 | 0.59 |
| 4 | 228 | 858 | 47.86 | 13.93 | 0.68 |
| 5 | 282 | 969 | 55.86 | 16.18 | 0.76 |
| 6 | 338 | 1081 | 66.14 | 19.11 | 0.87 |
| 7 | 395 | 1192 | 80.67 | 22.99 | 1.02 |
| 8 | 449 | 1303 | 85.06 | 24.44 | 1.07 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1809 | 24.37 | 7.71 | 0.48 |
| 2| 1928 | 25.92 | 8.80 | 0.51 |
| 3| 2069 | 27.35 | 9.87 | 0.53 |
| 5| 2470 | 32.15 | 12.56 | 0.61 |
| 10| 3091 | 39.50 | 17.95 | 0.73 |
| 41| 7491 | 95.07 | 54.05 | 1.64 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 622 | 22.53 | 7.32 | 0.41 |
| 2| 698 | 22.55 | 7.93 | 0.42 |
| 3| 961 | 26.16 | 9.62 | 0.47 |
| 5| 1258 | 30.98 | 12.32 | 0.54 |
| 10| 1992 | 39.67 | 18.06 | 0.69 |
| 41| 6682 | 98.16 | 55.03 | 1.63 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 665 | 29.13 | 8.90 | 0.48 |
| 2| 874 | 29.86 | 9.81 | 0.50 |
| 3| 908 | 32.76 | 11.24 | 0.54 |
| 5| 1224 | 36.95 | 13.76 | 0.60 |
| 10| 1969 | 44.13 | 19.15 | 0.73 |
| 36| 5853 | 97.27 | 51.37 | 1.56 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 667 | 33.79 | 10.15 | 0.53 |
| 2| 807 | 35.85 | 11.38 | 0.56 |
| 3| 938 | 37.95 | 12.63 | 0.59 |
| 5| 1376 | 44.07 | 15.71 | 0.68 |
| 10| 2115 | 55.18 | 22.16 | 0.85 |
| 30| 4913 | 99.92 | 47.89 | 1.52 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5813 | 27.13 | 9.11 | 0.69 |
| 2| 5985 | 36.84 | 12.44 | 0.80 |
| 3| 6037 | 41.28 | 13.82 | 0.85 |
| 4| 6253 | 51.23 | 17.27 | 0.96 |
| 5| 6465 | 65.73 | 22.22 | 1.13 |
| 6| 6477 | 69.52 | 23.38 | 1.17 |
| 7| 6820 | 84.47 | 28.51 | 1.34 |
| 8| 6915 | 94.80 | 32.01 | 1.45 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5835 | 20.26 | 6.78 | 0.62 |
| 10 | 1 | 57 | 5868 | 21.22 | 7.21 | 0.63 |
| 10 | 10 | 569 | 6174 | 39.51 | 14.45 | 0.85 |
| 10 | 20 | 1141 | 6515 | 60.42 | 22.68 | 1.09 |
| 10 | 30 | 1708 | 6854 | 80.22 | 30.52 | 1.32 |
| 10 | 39 | 2220 | 7160 | 98.93 | 37.88 | 1.54 |

