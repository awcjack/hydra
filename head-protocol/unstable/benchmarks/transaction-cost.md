--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-12-07 14:09:07.245916103 UTC |
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
| 1| 5837 | 10.28 | 3.25 | 0.51 |
| 2| 6038 | 13.01 | 4.14 | 0.55 |
| 3| 6238 | 14.29 | 4.51 | 0.57 |
| 5| 6646 | 18.58 | 5.86 | 0.64 |
| 10| 7647 | 29.12 | 9.18 | 0.79 |
| 43| 14282 | 98.78 | 30.87 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 741 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1273 | 6.41 | 3.60 | 0.28 |
| 10| 2170 | 12.13 | 7.25 | 0.40 |
| 54| 10052 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 34.19 | 9.84 | 0.53 |
| 3 | 170 | 747 | 39.86 | 11.58 | 0.59 |
| 4 | 226 | 862 | 54.38 | 15.54 | 0.74 |
| 5 | 281 | 969 | 64.36 | 18.22 | 0.84 |
| 6 | 336 | 1081 | 73.72 | 20.89 | 0.94 |
| 7 | 393 | 1192 | 85.18 | 24.11 | 1.06 |
| 8 | 450 | 1307 | 82.77 | 23.89 | 1.05 |
| 9 | 504 | 1414 | 96.21 | 27.45 | 1.19 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1799 | 24.37 | 7.71 | 0.48 |
| 2| 1935 | 25.39 | 8.68 | 0.50 |
| 3| 2063 | 26.90 | 9.76 | 0.53 |
| 5| 2397 | 31.29 | 12.31 | 0.60 |
| 10| 3186 | 41.69 | 18.58 | 0.76 |
| 42| 7777 | 99.54 | 55.95 | 1.70 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 631 | 22.81 | 7.37 | 0.42 |
| 2| 773 | 24.01 | 8.38 | 0.44 |
| 3| 896 | 25.14 | 9.33 | 0.46 |
| 5| 1232 | 29.08 | 11.77 | 0.52 |
| 10| 1933 | 37.55 | 17.47 | 0.66 |
| 40| 6492 | 97.13 | 54.04 | 1.61 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 690 | 27.54 | 8.47 | 0.46 |
| 2| 818 | 29.18 | 9.60 | 0.49 |
| 3| 996 | 33.51 | 11.46 | 0.55 |
| 5| 1187 | 36.24 | 13.54 | 0.59 |
| 10| 2121 | 46.43 | 19.83 | 0.76 |
| 35| 5927 | 95.97 | 50.44 | 1.55 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 682 | 33.83 | 10.15 | 0.53 |
| 2| 819 | 35.89 | 11.39 | 0.56 |
| 3| 895 | 37.24 | 12.41 | 0.58 |
| 5| 1247 | 42.45 | 15.23 | 0.66 |
| 10| 1960 | 53.68 | 21.69 | 0.83 |
| 29| 4911 | 98.43 | 46.83 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5793 | 27.09 | 9.09 | 0.69 |
| 2| 6001 | 37.01 | 12.47 | 0.80 |
| 3| 6001 | 41.42 | 13.84 | 0.85 |
| 4| 6212 | 54.33 | 18.30 | 0.99 |
| 5| 6397 | 63.63 | 21.41 | 1.10 |
| 6| 6646 | 74.28 | 25.02 | 1.22 |
| 7| 6491 | 77.55 | 26.09 | 1.25 |
| 8| 6983 | 94.70 | 31.98 | 1.45 |
| 9| 6765 | 92.61 | 31.01 | 1.42 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.38 | 6.48 | 0.61 |
| 10 | 1 | 57 | 5868 | 20.96 | 7.13 | 0.63 |
| 10 | 10 | 570 | 6175 | 39.06 | 14.30 | 0.84 |
| 10 | 20 | 1140 | 6514 | 59.98 | 22.53 | 1.08 |
| 10 | 30 | 1706 | 6852 | 80.92 | 30.76 | 1.33 |
| 10 | 36 | 2051 | 7059 | 93.22 | 35.61 | 1.47 |

