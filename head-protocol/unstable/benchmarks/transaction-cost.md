--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2026-02-20 05:53:41.209990287 UTC |
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
| 1| 5836 | 10.17 | 3.22 | 0.51 |
| 2| 6042 | 12.67 | 4.01 | 0.55 |
| 3| 6238 | 14.31 | 4.52 | 0.57 |
| 5| 6641 | 19.02 | 6.02 | 0.64 |
| 10| 7644 | 28.92 | 9.11 | 0.79 |
| 43| 14279 | 98.76 | 30.86 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 558 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 920 | 4.36 | 2.33 | 0.24 |
| 5| 1280 | 6.41 | 3.60 | 0.28 |
| 10| 2174 | 12.13 | 7.25 | 0.40 |
| 54| 10058 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 34.27 | 9.87 | 0.53 |
| 3 | 171 | 747 | 42.64 | 12.27 | 0.62 |
| 4 | 226 | 858 | 53.92 | 15.36 | 0.73 |
| 5 | 284 | 969 | 57.68 | 16.65 | 0.78 |
| 6 | 339 | 1081 | 70.31 | 20.11 | 0.91 |
| 7 | 396 | 1192 | 81.11 | 23.14 | 1.02 |
| 8 | 450 | 1303 | 89.91 | 25.70 | 1.12 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1789 | 24.00 | 7.62 | 0.48 |
| 2| 1947 | 25.80 | 8.77 | 0.51 |
| 3| 2013 | 26.36 | 9.59 | 0.52 |
| 5| 2459 | 32.48 | 12.64 | 0.61 |
| 10| 3119 | 40.62 | 18.26 | 0.75 |
| 37| 7442 | 98.11 | 52.25 | 1.65 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 640 | 22.54 | 7.31 | 0.41 |
| 2| 766 | 24.01 | 8.38 | 0.44 |
| 3| 964 | 26.92 | 9.85 | 0.48 |
| 5| 1134 | 28.57 | 11.64 | 0.51 |
| 10| 1842 | 35.56 | 16.91 | 0.64 |
| 42| 6733 | 98.49 | 55.75 | 1.64 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 709 | 27.54 | 8.47 | 0.47 |
| 2| 854 | 31.69 | 10.29 | 0.52 |
| 3| 1002 | 31.58 | 10.95 | 0.53 |
| 5| 1230 | 37.03 | 13.78 | 0.60 |
| 10| 1919 | 46.54 | 19.78 | 0.75 |
| 34| 5768 | 94.53 | 49.35 | 1.52 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 678 | 33.87 | 10.16 | 0.53 |
| 2| 853 | 36.64 | 11.62 | 0.57 |
| 3| 896 | 37.20 | 12.40 | 0.58 |
| 5| 1296 | 42.68 | 15.29 | 0.66 |
| 10| 1983 | 53.30 | 21.58 | 0.82 |
| 29| 4962 | 98.44 | 46.82 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5815 | 26.92 | 9.04 | 0.69 |
| 2| 5944 | 36.03 | 12.10 | 0.79 |
| 3| 6086 | 45.00 | 15.12 | 0.89 |
| 4| 6239 | 51.32 | 17.24 | 0.96 |
| 5| 6482 | 65.24 | 22.00 | 1.12 |
| 6| 6708 | 76.46 | 25.86 | 1.25 |
| 7| 6758 | 82.93 | 28.03 | 1.32 |
| 8| 6764 | 86.04 | 28.97 | 1.35 |
| 9| 7033 | 98.60 | 33.15 | 1.50 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.63 | 6.56 | 0.61 |
| 10 | 5 | 285 | 6004 | 28.46 | 10.13 | 0.72 |
| 10 | 10 | 570 | 6174 | 39.25 | 14.36 | 0.84 |
| 10 | 20 | 1138 | 6513 | 60.42 | 22.68 | 1.09 |
| 10 | 40 | 2277 | 7194 | 99.40 | 38.15 | 1.54 |

