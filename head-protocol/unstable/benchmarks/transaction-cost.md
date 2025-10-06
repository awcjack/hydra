--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-06 06:55:46.67722788 UTC |
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
| 1| 5840 | 10.72 | 3.41 | 0.52 |
| 2| 6035 | 12.41 | 3.92 | 0.54 |
| 3| 6239 | 14.50 | 4.58 | 0.58 |
| 5| 6645 | 18.43 | 5.81 | 0.63 |
| 10| 7647 | 28.73 | 9.04 | 0.78 |
| 43| 14281 | 98.95 | 30.93 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 742 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1282 | 6.41 | 3.60 | 0.28 |
| 10| 2178 | 12.13 | 7.25 | 0.40 |
| 54| 10049 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.42 | 7.12 | 0.42 |
| 2 | 114 | 636 | 33.25 | 9.61 | 0.52 |
| 3 | 170 | 747 | 42.44 | 12.22 | 0.61 |
| 4 | 227 | 858 | 51.00 | 14.64 | 0.71 |
| 5 | 284 | 969 | 57.94 | 16.75 | 0.78 |
| 6 | 339 | 1085 | 69.94 | 20.05 | 0.91 |
| 7 | 394 | 1196 | 74.70 | 21.60 | 0.96 |
| 8 | 450 | 1307 | 90.41 | 25.87 | 1.12 |
| 9 | 507 | 1414 | 90.68 | 26.12 | 1.13 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1793 | 24.29 | 7.69 | 0.48 |
| 2| 1990 | 26.54 | 9.00 | 0.52 |
| 3| 2082 | 26.98 | 9.78 | 0.53 |
| 5| 2369 | 31.28 | 12.31 | 0.60 |
| 10| 3181 | 42.00 | 18.63 | 0.76 |
| 39| 7745 | 99.62 | 54.03 | 1.69 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 638 | 22.54 | 7.30 | 0.41 |
| 2| 785 | 25.13 | 8.69 | 0.45 |
| 3| 874 | 25.82 | 9.54 | 0.47 |
| 5| 1137 | 28.00 | 11.46 | 0.51 |
| 10| 1841 | 35.71 | 16.95 | 0.64 |
| 40| 6341 | 94.22 | 53.22 | 1.57 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 651 | 29.13 | 8.90 | 0.48 |
| 2| 807 | 30.91 | 10.06 | 0.51 |
| 3| 868 | 31.97 | 11.00 | 0.53 |
| 5| 1236 | 37.02 | 13.78 | 0.60 |
| 10| 2039 | 44.67 | 19.31 | 0.74 |
| 36| 6022 | 96.61 | 51.24 | 1.57 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 702 | 33.87 | 10.16 | 0.53 |
| 2| 761 | 35.21 | 11.18 | 0.55 |
| 3| 937 | 37.84 | 12.60 | 0.59 |
| 5| 1289 | 42.68 | 15.29 | 0.66 |
| 10| 2163 | 55.85 | 22.35 | 0.86 |
| 29| 4852 | 98.47 | 46.83 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5794 | 27.09 | 9.08 | 0.69 |
| 2| 5952 | 35.89 | 12.04 | 0.79 |
| 3| 6107 | 45.78 | 15.46 | 0.90 |
| 4| 6332 | 55.48 | 18.77 | 1.01 |
| 5| 6411 | 63.54 | 21.46 | 1.10 |
| 6| 6641 | 74.98 | 25.25 | 1.23 |
| 7| 6652 | 79.06 | 26.57 | 1.27 |
| 8| 6942 | 94.50 | 31.93 | 1.45 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 1 | 57 | 5869 | 20.34 | 6.91 | 0.62 |
| 10 | 10 | 570 | 6174 | 39.06 | 14.30 | 0.84 |
| 10 | 20 | 1139 | 6513 | 59.98 | 22.53 | 1.08 |
| 10 | 30 | 1707 | 6853 | 80.48 | 30.61 | 1.32 |
| 10 | 39 | 2219 | 7158 | 98.05 | 37.58 | 1.53 |

