--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-10 09:02:49.277350877 UTC |
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
| 1| 5837 | 10.61 | 3.37 | 0.52 |
| 2| 6035 | 12.42 | 3.93 | 0.54 |
| 3| 6242 | 14.31 | 4.52 | 0.57 |
| 5| 6640 | 18.62 | 5.87 | 0.64 |
| 10| 7650 | 28.92 | 9.11 | 0.79 |
| 43| 14286 | 98.64 | 30.82 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1279 | 6.41 | 3.60 | 0.28 |
| 10| 2176 | 12.13 | 7.25 | 0.40 |
| 54| 10053 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 34.23 | 9.85 | 0.53 |
| 3 | 169 | 747 | 43.60 | 12.49 | 0.63 |
| 4 | 227 | 858 | 52.73 | 15.10 | 0.72 |
| 5 | 283 | 969 | 64.64 | 18.38 | 0.85 |
| 6 | 338 | 1081 | 70.78 | 20.14 | 0.91 |
| 7 | 396 | 1192 | 72.32 | 20.94 | 0.94 |
| 8 | 451 | 1303 | 86.91 | 24.83 | 1.09 |
| 9 | 505 | 1414 | 96.48 | 27.57 | 1.19 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1813 | 24.00 | 7.62 | 0.48 |
| 2| 1882 | 24.40 | 8.40 | 0.49 |
| 3| 2014 | 25.87 | 9.47 | 0.52 |
| 5| 2482 | 33.12 | 12.83 | 0.62 |
| 10| 3167 | 40.89 | 18.32 | 0.75 |
| 40| 7400 | 93.06 | 52.82 | 1.61 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 631 | 22.81 | 7.37 | 0.42 |
| 2| 738 | 24.04 | 8.38 | 0.44 |
| 3| 943 | 26.63 | 9.78 | 0.48 |
| 5| 1216 | 29.11 | 11.78 | 0.52 |
| 10| 2109 | 42.52 | 18.86 | 0.72 |
| 40| 6455 | 98.17 | 54.32 | 1.62 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 674 | 27.50 | 8.46 | 0.46 |
| 2| 846 | 29.93 | 9.83 | 0.50 |
| 3| 954 | 33.01 | 11.32 | 0.54 |
| 5| 1416 | 36.99 | 13.85 | 0.61 |
| 10| 1942 | 46.61 | 19.79 | 0.75 |
| 38| 6116 | 98.51 | 53.03 | 1.60 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 674 | 33.87 | 10.16 | 0.53 |
| 2| 765 | 35.21 | 11.18 | 0.55 |
| 3| 1017 | 38.63 | 12.83 | 0.60 |
| 5| 1308 | 43.28 | 15.47 | 0.67 |
| 10| 2168 | 55.33 | 22.20 | 0.85 |
| 29| 4940 | 98.59 | 46.89 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5834 | 26.92 | 9.05 | 0.69 |
| 2| 6020 | 36.85 | 12.43 | 0.80 |
| 3| 6019 | 43.72 | 14.67 | 0.87 |
| 4| 6287 | 54.71 | 18.48 | 1.00 |
| 5| 6410 | 64.67 | 21.78 | 1.11 |
| 6| 6624 | 75.04 | 25.31 | 1.23 |
| 7| 6686 | 81.16 | 27.25 | 1.30 |
| 8| 6792 | 88.66 | 29.80 | 1.38 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.19 | 6.41 | 0.61 |
| 10 | 1 | 57 | 5868 | 19.89 | 6.76 | 0.62 |
| 10 | 10 | 568 | 6172 | 40.39 | 14.75 | 0.85 |
| 10 | 30 | 1708 | 6854 | 79.60 | 30.31 | 1.31 |
| 10 | 40 | 2278 | 7194 | 99.66 | 38.24 | 1.55 |

