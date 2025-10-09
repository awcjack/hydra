--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-09 04:37:48.66530478 UTC |
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
| 2| 6037 | 13.08 | 4.16 | 0.55 |
| 3| 6238 | 14.97 | 4.75 | 0.58 |
| 5| 6640 | 18.84 | 5.95 | 0.64 |
| 10| 7646 | 29.38 | 9.27 | 0.79 |
| 43| 14282 | 98.95 | 30.93 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1276 | 6.41 | 3.60 | 0.28 |
| 10| 2171 | 12.13 | 7.25 | 0.40 |
| 54| 10048 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 32.24 | 9.37 | 0.51 |
| 3 | 170 | 747 | 42.57 | 12.25 | 0.62 |
| 4 | 227 | 858 | 48.07 | 13.96 | 0.68 |
| 5 | 283 | 969 | 57.81 | 16.71 | 0.78 |
| 6 | 338 | 1081 | 69.82 | 19.99 | 0.91 |
| 7 | 393 | 1192 | 80.18 | 22.87 | 1.02 |
| 8 | 448 | 1303 | 96.00 | 26.96 | 1.18 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1794 | 24.37 | 7.71 | 0.48 |
| 2| 1937 | 25.76 | 8.76 | 0.51 |
| 3| 2104 | 27.86 | 10.03 | 0.54 |
| 5| 2442 | 32.07 | 12.54 | 0.61 |
| 10| 3121 | 40.97 | 18.34 | 0.75 |
| 39| 7620 | 98.32 | 53.66 | 1.67 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 601 | 22.80 | 7.38 | 0.41 |
| 2| 819 | 25.16 | 8.70 | 0.45 |
| 3| 895 | 25.13 | 9.32 | 0.46 |
| 5| 1231 | 29.91 | 12.02 | 0.53 |
| 10| 1946 | 38.46 | 17.73 | 0.67 |
| 40| 6412 | 97.90 | 54.26 | 1.61 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 683 | 27.51 | 8.47 | 0.46 |
| 2| 812 | 29.18 | 9.60 | 0.49 |
| 3| 965 | 30.94 | 10.75 | 0.52 |
| 5| 1223 | 37.05 | 13.78 | 0.60 |
| 10| 2023 | 48.11 | 20.24 | 0.77 |
| 36| 6086 | 99.33 | 52.03 | 1.60 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 629 | 33.12 | 9.94 | 0.52 |
| 2| 807 | 35.92 | 11.40 | 0.56 |
| 3| 1043 | 39.30 | 13.04 | 0.61 |
| 5| 1343 | 43.28 | 15.47 | 0.67 |
| 10| 2204 | 57.06 | 22.71 | 0.87 |
| 28| 4561 | 93.96 | 44.83 | 1.43 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5697 | 22.93 | 7.56 | 0.64 |
| 2| 5890 | 32.53 | 10.86 | 0.75 |
| 3| 5968 | 40.36 | 13.46 | 0.84 |
| 4| 6187 | 53.99 | 18.14 | 0.99 |
| 5| 6525 | 66.63 | 22.50 | 1.14 |
| 6| 6556 | 73.23 | 24.63 | 1.21 |
| 7| 6566 | 77.57 | 26.04 | 1.25 |
| 8| 7072 | 91.74 | 30.93 | 1.43 |
| 9| 6919 | 96.12 | 32.36 | 1.46 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.82 | 6.63 | 0.61 |
| 10 | 1 | 56 | 5868 | 20.34 | 6.91 | 0.62 |
| 10 | 5 | 285 | 6004 | 30.23 | 10.73 | 0.74 |
| 10 | 20 | 1138 | 6512 | 60.17 | 22.59 | 1.09 |
| 10 | 30 | 1707 | 6854 | 80.48 | 30.61 | 1.32 |
| 10 | 39 | 2218 | 7157 | 99.12 | 37.95 | 1.54 |

