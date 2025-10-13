--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-13 04:27:14.062407657 UTC |
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
| 2| 6035 | 12.23 | 3.86 | 0.54 |
| 3| 6239 | 14.50 | 4.58 | 0.58 |
| 5| 6643 | 18.41 | 5.80 | 0.63 |
| 10| 7644 | 28.73 | 9.04 | 0.78 |
| 43| 14282 | 98.56 | 30.79 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 558 | 2.44 | 1.16 | 0.20 |
| 2| 740 | 3.38 | 1.73 | 0.22 |
| 3| 917 | 4.36 | 2.33 | 0.24 |
| 5| 1280 | 6.41 | 3.60 | 0.28 |
| 10| 2183 | 12.13 | 7.25 | 0.40 |
| 54| 10082 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 33.17 | 9.59 | 0.52 |
| 3 | 169 | 747 | 42.45 | 12.22 | 0.61 |
| 4 | 225 | 858 | 49.37 | 14.24 | 0.69 |
| 5 | 282 | 969 | 64.43 | 18.30 | 0.85 |
| 6 | 339 | 1081 | 66.62 | 19.23 | 0.87 |
| 7 | 396 | 1192 | 76.18 | 21.86 | 0.98 |
| 8 | 451 | 1303 | 94.08 | 26.65 | 1.16 |
| 9 | 504 | 1414 | 90.96 | 26.19 | 1.14 |
| 10 | 560 | 1525 | 98.60 | 28.74 | 1.22 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1807 | 24.00 | 7.62 | 0.48 |
| 2| 2013 | 26.87 | 9.07 | 0.52 |
| 3| 2055 | 27.06 | 9.80 | 0.53 |
| 5| 2357 | 31.03 | 12.25 | 0.59 |
| 10| 3361 | 44.88 | 19.45 | 0.80 |
| 41| 7684 | 98.88 | 55.08 | 1.68 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 606 | 22.84 | 7.37 | 0.41 |
| 2| 837 | 25.41 | 8.76 | 0.46 |
| 3| 942 | 27.10 | 9.90 | 0.48 |
| 5| 1140 | 28.87 | 11.72 | 0.52 |
| 10| 2032 | 39.47 | 18.01 | 0.69 |
| 40| 6339 | 94.65 | 53.34 | 1.58 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 706 | 27.54 | 8.47 | 0.46 |
| 2| 800 | 30.98 | 10.08 | 0.51 |
| 3| 903 | 30.26 | 10.55 | 0.51 |
| 5| 1234 | 37.06 | 13.79 | 0.60 |
| 10| 1976 | 44.45 | 19.23 | 0.74 |
| 36| 6002 | 97.86 | 51.59 | 1.58 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 667 | 33.83 | 10.15 | 0.53 |
| 2| 806 | 35.92 | 11.40 | 0.56 |
| 3| 938 | 37.84 | 12.60 | 0.59 |
| 5| 1301 | 42.94 | 15.37 | 0.67 |
| 10| 2262 | 56.76 | 22.63 | 0.87 |
| 29| 4946 | 99.45 | 47.11 | 1.51 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5787 | 27.09 | 9.08 | 0.69 |
| 2| 5877 | 32.45 | 10.85 | 0.75 |
| 3| 6102 | 45.77 | 15.42 | 0.90 |
| 4| 6070 | 49.26 | 16.45 | 0.93 |
| 5| 6334 | 63.06 | 21.22 | 1.09 |
| 6| 6647 | 75.31 | 25.45 | 1.23 |
| 7| 6897 | 84.10 | 28.40 | 1.34 |
| 8| 6668 | 84.63 | 28.42 | 1.33 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5835 | 19.63 | 6.56 | 0.61 |
| 10 | 5 | 284 | 6004 | 29.79 | 10.58 | 0.73 |
| 10 | 10 | 569 | 6173 | 39.06 | 14.30 | 0.84 |
| 10 | 20 | 1137 | 6512 | 60.42 | 22.68 | 1.09 |
| 10 | 30 | 1708 | 6854 | 80.22 | 30.52 | 1.32 |
| 10 | 38 | 2163 | 7125 | 96.44 | 36.92 | 1.51 |

