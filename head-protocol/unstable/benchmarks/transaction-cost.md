--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-09 03:53:56.532166418 UTC |
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
| 1| 5834 | 10.40 | 3.30 | 0.51 |
| 2| 6035 | 12.75 | 4.04 | 0.55 |
| 3| 6236 | 14.38 | 4.54 | 0.57 |
| 5| 6641 | 19.17 | 6.07 | 0.64 |
| 10| 7644 | 29.14 | 9.19 | 0.79 |
| 43| 14282 | 98.78 | 30.87 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 741 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1277 | 6.41 | 3.60 | 0.28 |
| 10| 2180 | 12.13 | 7.25 | 0.40 |
| 54| 10051 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.42 | 7.12 | 0.42 |
| 2 | 114 | 636 | 34.23 | 9.85 | 0.53 |
| 3 | 169 | 747 | 43.92 | 12.57 | 0.63 |
| 4 | 226 | 858 | 47.57 | 13.81 | 0.67 |
| 5 | 283 | 969 | 63.05 | 18.00 | 0.83 |
| 6 | 338 | 1081 | 63.60 | 18.42 | 0.84 |
| 7 | 394 | 1192 | 78.32 | 22.42 | 1.00 |
| 8 | 450 | 1303 | 87.08 | 24.92 | 1.09 |
| 9 | 505 | 1414 | 88.62 | 25.69 | 1.11 |
| 10 | 560 | 1529 | 96.54 | 27.92 | 1.20 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1806 | 24.00 | 7.62 | 0.48 |
| 2| 1968 | 26.92 | 9.08 | 0.52 |
| 3| 2055 | 27.32 | 9.86 | 0.53 |
| 5| 2443 | 33.64 | 12.96 | 0.62 |
| 10| 3184 | 42.26 | 18.70 | 0.77 |
| 41| 7818 | 99.98 | 55.44 | 1.70 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 620 | 22.53 | 7.32 | 0.41 |
| 2| 762 | 23.61 | 8.25 | 0.43 |
| 3| 998 | 28.09 | 10.17 | 0.49 |
| 5| 1167 | 28.81 | 11.71 | 0.52 |
| 10| 2091 | 42.43 | 18.82 | 0.72 |
| 44| 6702 | 95.26 | 56.19 | 1.62 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 639 | 29.13 | 8.90 | 0.48 |
| 2| 809 | 30.87 | 10.05 | 0.51 |
| 3| 868 | 32.09 | 11.03 | 0.53 |
| 5| 1193 | 36.35 | 13.57 | 0.59 |
| 10| 2044 | 45.01 | 19.41 | 0.74 |
| 35| 5831 | 95.55 | 50.26 | 1.54 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 702 | 33.79 | 10.15 | 0.53 |
| 2| 764 | 35.21 | 11.18 | 0.55 |
| 3| 938 | 37.80 | 12.59 | 0.59 |
| 5| 1294 | 42.87 | 15.35 | 0.66 |
| 10| 2049 | 54.88 | 22.05 | 0.84 |
| 29| 5025 | 99.80 | 47.25 | 1.52 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5813 | 27.08 | 9.08 | 0.69 |
| 2| 5863 | 32.61 | 10.89 | 0.75 |
| 3| 6041 | 43.60 | 14.64 | 0.87 |
| 4| 6205 | 51.11 | 17.18 | 0.96 |
| 5| 6372 | 64.72 | 21.78 | 1.11 |
| 6| 6765 | 76.32 | 25.75 | 1.25 |
| 7| 6736 | 82.56 | 27.77 | 1.31 |
| 8| 6912 | 89.33 | 30.14 | 1.39 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 1 | 57 | 5868 | 21.66 | 7.37 | 0.64 |
| 10 | 5 | 285 | 6004 | 29.35 | 10.43 | 0.73 |
| 10 | 10 | 570 | 6174 | 40.39 | 14.75 | 0.85 |
| 10 | 20 | 1138 | 6512 | 60.42 | 22.68 | 1.09 |
| 10 | 30 | 1707 | 6854 | 80.67 | 30.67 | 1.32 |
| 10 | 39 | 2222 | 7161 | 99.38 | 38.04 | 1.54 |

