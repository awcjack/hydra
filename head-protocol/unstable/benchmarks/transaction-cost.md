--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-07 04:36:49.336972828 UTC |
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
| 1| 5834 | 10.93 | 3.49 | 0.52 |
| 2| 6038 | 12.78 | 4.06 | 0.55 |
| 3| 6238 | 14.50 | 4.58 | 0.57 |
| 5| 6641 | 18.64 | 5.88 | 0.64 |
| 10| 7648 | 28.94 | 9.11 | 0.79 |
| 43| 14279 | 98.56 | 30.79 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 741 | 3.38 | 1.73 | 0.22 |
| 3| 919 | 4.36 | 2.33 | 0.24 |
| 5| 1279 | 6.41 | 3.60 | 0.28 |
| 10| 2176 | 12.13 | 7.25 | 0.40 |
| 54| 10054 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 529 | 24.42 | 7.12 | 0.42 |
| 2 | 113 | 636 | 32.23 | 9.37 | 0.51 |
| 3 | 170 | 747 | 42.65 | 12.27 | 0.62 |
| 4 | 227 | 858 | 49.10 | 14.20 | 0.69 |
| 5 | 283 | 969 | 64.05 | 18.18 | 0.84 |
| 6 | 337 | 1085 | 65.96 | 19.03 | 0.87 |
| 7 | 395 | 1196 | 78.53 | 22.47 | 1.00 |
| 8 | 451 | 1303 | 83.34 | 24.03 | 1.05 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1802 | 24.37 | 7.71 | 0.48 |
| 2| 1924 | 25.51 | 8.70 | 0.50 |
| 3| 2123 | 28.02 | 10.07 | 0.54 |
| 5| 2357 | 31.38 | 12.33 | 0.60 |
| 10| 3002 | 37.82 | 17.46 | 0.71 |
| 39| 7403 | 96.29 | 53.05 | 1.64 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 600 | 22.84 | 7.39 | 0.41 |
| 2| 763 | 24.32 | 8.46 | 0.44 |
| 3| 853 | 23.99 | 9.01 | 0.45 |
| 5| 1269 | 29.99 | 12.03 | 0.54 |
| 10| 1994 | 40.13 | 18.20 | 0.69 |
| 38| 6186 | 96.14 | 52.41 | 1.58 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 694 | 27.54 | 8.47 | 0.46 |
| 2| 770 | 28.55 | 9.40 | 0.48 |
| 3| 918 | 32.64 | 11.21 | 0.54 |
| 5| 1172 | 36.31 | 13.56 | 0.59 |
| 10| 2011 | 47.74 | 20.13 | 0.77 |
| 36| 6097 | 97.76 | 51.56 | 1.58 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 670 | 33.83 | 10.15 | 0.53 |
| 2| 892 | 36.56 | 11.60 | 0.57 |
| 3| 944 | 37.84 | 12.60 | 0.59 |
| 5| 1224 | 41.78 | 15.02 | 0.65 |
| 10| 2075 | 54.55 | 21.97 | 0.84 |
| 29| 4913 | 98.78 | 46.92 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5836 | 27.08 | 9.09 | 0.69 |
| 2| 5940 | 35.93 | 12.05 | 0.79 |
| 3| 6162 | 45.73 | 15.44 | 0.90 |
| 4| 6285 | 53.70 | 18.06 | 0.99 |
| 5| 6367 | 62.34 | 21.03 | 1.09 |
| 6| 6578 | 73.54 | 24.84 | 1.21 |
| 7| 6694 | 79.70 | 26.83 | 1.28 |
| 8| 6897 | 85.96 | 28.96 | 1.36 |
| 9| 6839 | 93.73 | 31.42 | 1.43 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 20.26 | 6.78 | 0.62 |
| 10 | 10 | 570 | 6174 | 38.62 | 14.15 | 0.84 |
| 10 | 20 | 1140 | 6514 | 60.42 | 22.68 | 1.09 |
| 10 | 30 | 1707 | 6853 | 80.92 | 30.76 | 1.33 |
| 10 | 38 | 2165 | 7127 | 97.77 | 37.38 | 1.52 |

