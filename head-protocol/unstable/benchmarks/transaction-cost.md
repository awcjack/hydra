--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-23 05:20:24.457987928 UTC |
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
| 1| 5837 | 11.12 | 3.55 | 0.52 |
| 2| 6037 | 12.67 | 4.01 | 0.55 |
| 3| 6238 | 14.29 | 4.51 | 0.57 |
| 5| 6645 | 18.41 | 5.80 | 0.63 |
| 10| 7651 | 29.12 | 9.18 | 0.79 |
| 43| 14279 | 98.58 | 30.79 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 916 | 4.36 | 2.33 | 0.24 |
| 5| 1278 | 6.41 | 3.60 | 0.28 |
| 10| 2167 | 12.13 | 7.25 | 0.40 |
| 54| 10049 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.46 | 7.13 | 0.42 |
| 2 | 114 | 640 | 34.19 | 9.84 | 0.53 |
| 3 | 171 | 747 | 41.01 | 11.85 | 0.60 |
| 4 | 225 | 858 | 53.94 | 15.36 | 0.73 |
| 5 | 281 | 969 | 61.13 | 17.51 | 0.81 |
| 6 | 339 | 1081 | 69.89 | 20.00 | 0.91 |
| 7 | 394 | 1192 | 83.48 | 23.75 | 1.05 |
| 8 | 450 | 1303 | 90.04 | 25.73 | 1.12 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1804 | 24.29 | 7.69 | 0.48 |
| 2| 1882 | 24.43 | 8.40 | 0.49 |
| 3| 2195 | 29.38 | 10.44 | 0.56 |
| 5| 2384 | 31.57 | 12.38 | 0.60 |
| 10| 3139 | 40.90 | 18.33 | 0.75 |
| 40| 7682 | 99.94 | 54.74 | 1.69 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 661 | 22.54 | 7.31 | 0.41 |
| 2| 764 | 23.59 | 8.23 | 0.43 |
| 3| 943 | 27.00 | 9.87 | 0.48 |
| 5| 1207 | 29.15 | 11.79 | 0.52 |
| 10| 2017 | 39.60 | 18.06 | 0.69 |
| 40| 6485 | 99.29 | 54.62 | 1.63 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 677 | 27.54 | 8.47 | 0.46 |
| 2| 812 | 29.22 | 9.61 | 0.49 |
| 3| 902 | 30.19 | 10.53 | 0.51 |
| 5| 1293 | 37.78 | 14.00 | 0.61 |
| 10| 2034 | 47.24 | 19.99 | 0.77 |
| 38| 6074 | 99.13 | 53.20 | 1.60 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 628 | 33.15 | 9.95 | 0.52 |
| 2| 875 | 36.64 | 11.62 | 0.57 |
| 3| 1022 | 39.26 | 13.03 | 0.61 |
| 5| 1289 | 42.45 | 15.23 | 0.66 |
| 10| 1967 | 52.82 | 21.44 | 0.82 |
| 29| 5017 | 99.93 | 47.27 | 1.52 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5817 | 27.12 | 9.10 | 0.69 |
| 2| 5981 | 36.97 | 12.45 | 0.80 |
| 3| 6062 | 44.49 | 14.99 | 0.88 |
| 4| 6139 | 50.48 | 16.92 | 0.95 |
| 5| 6620 | 67.46 | 22.85 | 1.15 |
| 6| 6642 | 74.49 | 25.10 | 1.23 |
| 7| 6559 | 77.96 | 26.22 | 1.26 |
| 8| 6727 | 88.39 | 29.75 | 1.37 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 18.75 | 6.26 | 0.60 |
| 10 | 1 | 57 | 5868 | 21.41 | 7.28 | 0.63 |
| 10 | 5 | 285 | 6005 | 29.35 | 10.43 | 0.73 |
| 10 | 10 | 570 | 6175 | 39.51 | 14.45 | 0.85 |
| 10 | 30 | 1709 | 6856 | 79.60 | 30.31 | 1.31 |
| 10 | 39 | 2218 | 7157 | 99.38 | 38.04 | 1.54 |

