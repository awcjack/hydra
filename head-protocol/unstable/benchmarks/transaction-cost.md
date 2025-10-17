--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-17 04:27:44.219472735 UTC |
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
| 2| 6038 | 12.25 | 3.87 | 0.54 |
| 3| 6240 | 14.52 | 4.59 | 0.58 |
| 5| 6641 | 18.52 | 5.84 | 0.63 |
| 10| 7646 | 28.92 | 9.11 | 0.79 |
| 43| 14281 | 99.42 | 31.09 | 1.81 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 559 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 922 | 4.36 | 2.33 | 0.24 |
| 5| 1280 | 6.41 | 3.60 | 0.28 |
| 10| 2181 | 12.13 | 7.25 | 0.40 |
| 54| 10067 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.42 | 7.12 | 0.42 |
| 2 | 114 | 636 | 34.27 | 9.87 | 0.53 |
| 3 | 170 | 747 | 42.73 | 12.29 | 0.62 |
| 4 | 227 | 858 | 54.10 | 15.43 | 0.74 |
| 5 | 283 | 969 | 62.61 | 17.83 | 0.83 |
| 6 | 338 | 1081 | 64.75 | 18.78 | 0.86 |
| 7 | 395 | 1192 | 71.06 | 20.59 | 0.93 |
| 8 | 451 | 1303 | 90.41 | 25.82 | 1.12 |
| 9 | 505 | 1414 | 88.18 | 25.58 | 1.11 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1785 | 24.37 | 7.71 | 0.48 |
| 2| 1887 | 24.40 | 8.40 | 0.49 |
| 3| 2105 | 28.05 | 10.08 | 0.54 |
| 5| 2367 | 31.38 | 12.33 | 0.60 |
| 10| 3231 | 42.93 | 18.90 | 0.78 |
| 41| 7753 | 99.42 | 55.27 | 1.69 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 608 | 22.53 | 7.31 | 0.41 |
| 2| 757 | 23.59 | 8.23 | 0.43 |
| 3| 835 | 24.09 | 9.04 | 0.45 |
| 5| 1212 | 30.05 | 12.05 | 0.53 |
| 10| 2021 | 40.70 | 18.36 | 0.70 |
| 41| 6707 | 99.79 | 55.52 | 1.65 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 635 | 29.09 | 8.89 | 0.48 |
| 2| 854 | 29.86 | 9.81 | 0.50 |
| 3| 948 | 30.94 | 10.75 | 0.52 |
| 5| 1317 | 35.64 | 13.44 | 0.59 |
| 10| 1906 | 46.27 | 19.69 | 0.75 |
| 37| 6114 | 99.46 | 52.69 | 1.60 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 677 | 33.83 | 10.16 | 0.53 |
| 2| 761 | 35.14 | 11.16 | 0.55 |
| 3| 941 | 37.91 | 12.62 | 0.59 |
| 5| 1200 | 41.93 | 15.06 | 0.65 |
| 10| 2094 | 54.54 | 21.97 | 0.84 |
| 29| 4904 | 98.06 | 46.70 | 1.49 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5814 | 27.13 | 9.11 | 0.69 |
| 2| 5931 | 36.07 | 12.10 | 0.79 |
| 3| 6042 | 43.67 | 14.65 | 0.87 |
| 4| 6208 | 54.16 | 18.20 | 0.99 |
| 5| 6542 | 65.68 | 22.23 | 1.13 |
| 6| 6453 | 69.87 | 23.45 | 1.17 |
| 7| 6654 | 78.51 | 26.32 | 1.27 |
| 8| 6849 | 90.43 | 30.53 | 1.40 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.19 | 6.41 | 0.61 |
| 10 | 1 | 57 | 5869 | 20.34 | 6.91 | 0.62 |
| 10 | 10 | 569 | 6173 | 39.06 | 14.30 | 0.84 |
| 10 | 30 | 1708 | 6854 | 80.67 | 30.67 | 1.32 |
| 10 | 39 | 2215 | 7154 | 98.93 | 37.88 | 1.54 |

