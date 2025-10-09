--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-09 02:55:19.533477201 UTC |
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
| 1| 5836 | 10.19 | 3.22 | 0.51 |
| 2| 6038 | 12.91 | 4.10 | 0.55 |
| 3| 6239 | 14.50 | 4.58 | 0.58 |
| 5| 6638 | 18.43 | 5.81 | 0.63 |
| 10| 7646 | 29.47 | 9.30 | 0.79 |
| 43| 14281 | 99.11 | 30.98 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 740 | 3.38 | 1.73 | 0.22 |
| 3| 913 | 4.36 | 2.33 | 0.24 |
| 5| 1283 | 6.41 | 3.60 | 0.28 |
| 10| 2173 | 12.13 | 7.25 | 0.40 |
| 54| 10075 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 113 | 636 | 32.19 | 9.36 | 0.51 |
| 3 | 170 | 747 | 42.35 | 12.18 | 0.61 |
| 4 | 226 | 858 | 49.51 | 14.33 | 0.69 |
| 5 | 283 | 969 | 62.74 | 17.89 | 0.83 |
| 6 | 338 | 1081 | 64.37 | 18.65 | 0.85 |
| 7 | 392 | 1192 | 80.27 | 22.80 | 1.02 |
| 8 | 449 | 1303 | 89.88 | 25.59 | 1.12 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1812 | 24.37 | 7.71 | 0.48 |
| 2| 1972 | 26.58 | 9.01 | 0.52 |
| 3| 2127 | 28.27 | 10.13 | 0.55 |
| 5| 2320 | 30.42 | 12.06 | 0.59 |
| 10| 3151 | 41.51 | 18.49 | 0.76 |
| 41| 7752 | 99.70 | 55.35 | 1.70 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 609 | 22.84 | 7.38 | 0.41 |
| 2| 794 | 23.59 | 8.23 | 0.44 |
| 3| 903 | 25.16 | 9.35 | 0.46 |
| 5| 1115 | 27.01 | 11.19 | 0.50 |
| 10| 2001 | 41.09 | 18.45 | 0.70 |
| 42| 6748 | 97.90 | 55.63 | 1.64 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 648 | 29.13 | 8.90 | 0.48 |
| 2| 779 | 30.98 | 10.08 | 0.51 |
| 3| 868 | 32.05 | 11.02 | 0.53 |
| 5| 1310 | 38.49 | 14.22 | 0.62 |
| 10| 1847 | 45.45 | 19.43 | 0.74 |
| 36| 5975 | 98.43 | 51.72 | 1.58 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 683 | 33.83 | 10.15 | 0.53 |
| 2| 894 | 36.48 | 11.58 | 0.57 |
| 3| 985 | 38.62 | 12.83 | 0.60 |
| 5| 1224 | 41.86 | 15.04 | 0.65 |
| 10| 2085 | 54.81 | 22.03 | 0.84 |
| 30| 4995 | 99.34 | 47.74 | 1.52 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5781 | 26.97 | 9.07 | 0.69 |
| 2| 5924 | 35.93 | 12.08 | 0.79 |
| 3| 6097 | 42.37 | 14.21 | 0.86 |
| 4| 6024 | 46.07 | 15.35 | 0.90 |
| 5| 6221 | 58.72 | 19.64 | 1.04 |
| 6| 6507 | 71.73 | 24.11 | 1.19 |
| 7| 6742 | 80.64 | 27.14 | 1.29 |
| 8| 6803 | 90.50 | 30.48 | 1.40 |
| 9| 6982 | 99.71 | 33.54 | 1.50 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 5 | 285 | 6005 | 28.90 | 10.28 | 0.72 |
| 10 | 10 | 570 | 6175 | 38.18 | 14.00 | 0.83 |
| 10 | 30 | 1708 | 6854 | 80.92 | 30.76 | 1.33 |
| 10 | 39 | 2223 | 7162 | 99.82 | 38.19 | 1.55 |

