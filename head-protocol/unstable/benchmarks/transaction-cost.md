--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-31 05:36:00.763979757 UTC |
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
| 2| 6035 | 12.25 | 3.87 | 0.54 |
| 3| 6243 | 14.50 | 4.58 | 0.58 |
| 5| 6640 | 18.90 | 5.97 | 0.64 |
| 10| 7646 | 28.94 | 9.11 | 0.79 |
| 43| 14279 | 99.23 | 31.02 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 558 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 917 | 4.36 | 2.33 | 0.24 |
| 5| 1276 | 6.41 | 3.60 | 0.28 |
| 10| 2176 | 12.13 | 7.25 | 0.40 |
| 54| 10072 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 32.27 | 9.39 | 0.51 |
| 3 | 170 | 747 | 41.49 | 12.01 | 0.60 |
| 4 | 227 | 858 | 49.58 | 14.34 | 0.69 |
| 5 | 281 | 969 | 62.89 | 17.90 | 0.83 |
| 6 | 339 | 1085 | 69.36 | 19.87 | 0.90 |
| 7 | 398 | 1192 | 82.51 | 23.38 | 1.04 |
| 8 | 451 | 1303 | 96.03 | 26.97 | 1.18 |
| 9 | 505 | 1414 | 90.10 | 26.16 | 1.13 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1809 | 23.92 | 7.60 | 0.48 |
| 2| 1921 | 25.84 | 8.78 | 0.51 |
| 3| 2129 | 27.97 | 10.06 | 0.54 |
| 5| 2444 | 32.52 | 12.65 | 0.61 |
| 10| 3209 | 41.46 | 18.50 | 0.76 |
| 40| 7563 | 96.01 | 53.64 | 1.65 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 639 | 22.50 | 7.30 | 0.41 |
| 2| 733 | 24.04 | 8.40 | 0.44 |
| 3| 946 | 26.01 | 9.59 | 0.47 |
| 5| 1167 | 27.96 | 11.46 | 0.51 |
| 10| 1939 | 38.62 | 17.77 | 0.68 |
| 39| 6401 | 98.64 | 53.78 | 1.62 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 666 | 29.13 | 8.90 | 0.48 |
| 2| 823 | 29.26 | 9.62 | 0.49 |
| 3| 961 | 33.36 | 11.42 | 0.54 |
| 5| 1273 | 37.85 | 14.02 | 0.61 |
| 10| 2095 | 45.30 | 19.51 | 0.75 |
| 37| 6087 | 99.28 | 52.60 | 1.60 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 687 | 33.79 | 10.15 | 0.53 |
| 2| 887 | 36.60 | 11.61 | 0.57 |
| 3| 1015 | 38.47 | 12.79 | 0.60 |
| 5| 1309 | 43.20 | 15.46 | 0.67 |
| 10| 1968 | 53.53 | 21.66 | 0.83 |
| 29| 4941 | 99.32 | 47.08 | 1.51 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5789 | 27.00 | 9.08 | 0.69 |
| 2| 5894 | 34.91 | 11.68 | 0.78 |
| 3| 6088 | 45.12 | 15.17 | 0.89 |
| 4| 6267 | 55.35 | 18.62 | 1.01 |
| 5| 6426 | 60.86 | 20.54 | 1.07 |
| 6| 6436 | 71.06 | 23.84 | 1.18 |
| 7| 6609 | 78.58 | 26.38 | 1.27 |
| 8| 6928 | 93.16 | 31.38 | 1.43 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 18.30 | 6.11 | 0.60 |
| 10 | 1 | 57 | 5868 | 20.34 | 6.91 | 0.62 |
| 10 | 10 | 570 | 6175 | 38.18 | 14.00 | 0.83 |
| 10 | 20 | 1138 | 6512 | 60.42 | 22.68 | 1.09 |
| 10 | 30 | 1706 | 6852 | 80.04 | 30.46 | 1.32 |
| 10 | 38 | 2162 | 7125 | 97.33 | 37.23 | 1.52 |

