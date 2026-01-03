--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2026-01-03 08:56:18.053602019 UTC |
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
| 1| 5836 | 10.57 | 3.36 | 0.52 |
| 2| 6037 | 12.65 | 4.01 | 0.55 |
| 3| 6238 | 14.71 | 4.65 | 0.58 |
| 5| 6638 | 18.72 | 5.91 | 0.64 |
| 10| 7647 | 28.81 | 9.07 | 0.78 |
| 43| 14282 | 98.58 | 30.79 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 558 | 2.44 | 1.16 | 0.20 |
| 2| 736 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1279 | 6.41 | 3.60 | 0.28 |
| 10| 2170 | 12.13 | 7.25 | 0.40 |
| 54| 10062 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 56 | 524 | 24.46 | 7.13 | 0.42 |
| 2 | 114 | 640 | 32.23 | 9.37 | 0.51 |
| 3 | 171 | 747 | 43.90 | 12.57 | 0.63 |
| 4 | 227 | 862 | 52.51 | 15.02 | 0.72 |
| 5 | 285 | 969 | 61.15 | 17.45 | 0.81 |
| 6 | 340 | 1081 | 67.90 | 19.53 | 0.89 |
| 7 | 395 | 1196 | 80.86 | 22.99 | 1.02 |
| 8 | 450 | 1303 | 81.08 | 23.53 | 1.03 |
| 10 | 560 | 1525 | 98.33 | 28.29 | 1.22 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1791 | 24.00 | 7.62 | 0.48 |
| 2| 1999 | 26.84 | 9.06 | 0.52 |
| 3| 2132 | 28.13 | 10.10 | 0.54 |
| 5| 2387 | 31.29 | 12.31 | 0.60 |
| 10| 3253 | 42.63 | 18.83 | 0.77 |
| 39| 7657 | 97.86 | 53.51 | 1.66 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 630 | 22.84 | 7.38 | 0.42 |
| 2| 783 | 24.01 | 8.39 | 0.44 |
| 3| 895 | 24.99 | 9.29 | 0.46 |
| 5| 1216 | 30.17 | 12.07 | 0.53 |
| 10| 1844 | 35.67 | 16.94 | 0.64 |
| 40| 6231 | 93.19 | 52.92 | 1.56 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 649 | 29.13 | 8.90 | 0.48 |
| 2| 770 | 28.51 | 9.39 | 0.48 |
| 3| 967 | 33.35 | 11.42 | 0.54 |
| 5| 1236 | 37.24 | 13.85 | 0.61 |
| 10| 2017 | 48.08 | 20.24 | 0.77 |
| 37| 6087 | 98.28 | 52.37 | 1.59 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 691 | 33.83 | 10.15 | 0.53 |
| 2| 902 | 36.60 | 11.61 | 0.57 |
| 3| 1078 | 39.22 | 13.02 | 0.61 |
| 5| 1314 | 43.40 | 15.50 | 0.67 |
| 10| 2133 | 55.21 | 22.17 | 0.85 |
| 29| 4950 | 99.15 | 47.05 | 1.51 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5803 | 27.16 | 9.11 | 0.69 |
| 2| 5976 | 37.01 | 12.48 | 0.80 |
| 3| 6148 | 45.80 | 15.46 | 0.90 |
| 4| 6283 | 54.84 | 18.50 | 1.00 |
| 5| 6586 | 66.89 | 22.65 | 1.14 |
| 6| 6491 | 70.85 | 23.86 | 1.18 |
| 7| 6917 | 86.23 | 29.21 | 1.36 |
| 8| 6756 | 88.10 | 29.68 | 1.37 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.19 | 6.41 | 0.61 |
| 10 | 1 | 57 | 5869 | 19.89 | 6.76 | 0.62 |
| 10 | 10 | 567 | 6171 | 39.51 | 14.45 | 0.85 |
| 10 | 20 | 1138 | 6512 | 59.54 | 22.38 | 1.08 |
| 10 | 30 | 1707 | 6854 | 80.92 | 30.76 | 1.33 |
| 10 | 39 | 2220 | 7160 | 99.82 | 38.19 | 1.55 |

