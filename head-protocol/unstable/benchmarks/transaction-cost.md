--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-04 04:22:49.258718325 UTC |
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
| 1| 5834 | 10.85 | 3.45 | 0.52 |
| 2| 6035 | 12.70 | 4.03 | 0.55 |
| 3| 6242 | 14.29 | 4.51 | 0.57 |
| 5| 6640 | 19.19 | 6.08 | 0.64 |
| 10| 7647 | 28.80 | 9.07 | 0.78 |
| 43| 14282 | 98.66 | 30.82 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 740 | 3.38 | 1.73 | 0.22 |
| 3| 920 | 4.36 | 2.33 | 0.24 |
| 5| 1278 | 6.41 | 3.60 | 0.28 |
| 10| 2177 | 12.13 | 7.25 | 0.40 |
| 54| 10057 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 56 | 524 | 25.20 | 7.30 | 0.43 |
| 2 | 113 | 636 | 34.20 | 9.84 | 0.53 |
| 3 | 169 | 747 | 43.91 | 12.57 | 0.63 |
| 4 | 226 | 858 | 54.15 | 15.46 | 0.74 |
| 5 | 281 | 969 | 57.88 | 16.70 | 0.78 |
| 6 | 338 | 1085 | 73.72 | 20.92 | 0.94 |
| 7 | 395 | 1192 | 76.52 | 21.99 | 0.98 |
| 8 | 451 | 1303 | 83.03 | 24.00 | 1.05 |
| 9 | 504 | 1414 | 88.88 | 25.75 | 1.12 |
| 10 | 560 | 1525 | 96.83 | 28.05 | 1.20 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1792 | 24.37 | 7.71 | 0.48 |
| 2| 1961 | 25.52 | 8.71 | 0.51 |
| 3| 2069 | 27.35 | 9.87 | 0.53 |
| 5| 2520 | 34.51 | 13.21 | 0.64 |
| 10| 3109 | 40.10 | 18.11 | 0.74 |
| 40| 7646 | 96.40 | 53.79 | 1.65 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 659 | 22.54 | 7.31 | 0.41 |
| 2| 773 | 23.59 | 8.23 | 0.43 |
| 3| 946 | 26.12 | 9.60 | 0.47 |
| 5| 1214 | 29.04 | 11.76 | 0.52 |
| 10| 1911 | 37.65 | 17.49 | 0.66 |
| 44| 6905 | 99.35 | 57.32 | 1.67 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 635 | 26.83 | 8.26 | 0.45 |
| 2| 885 | 29.90 | 9.82 | 0.50 |
| 3| 1095 | 34.10 | 11.65 | 0.56 |
| 5| 1222 | 34.22 | 13.01 | 0.57 |
| 10| 2015 | 45.05 | 19.42 | 0.74 |
| 37| 6022 | 96.92 | 51.95 | 1.57 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 706 | 33.83 | 10.15 | 0.53 |
| 2| 832 | 35.85 | 11.38 | 0.56 |
| 3| 904 | 37.16 | 12.39 | 0.58 |
| 5| 1278 | 42.53 | 15.25 | 0.66 |
| 10| 2215 | 56.27 | 22.49 | 0.86 |
| 28| 4704 | 94.58 | 45.08 | 1.45 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5799 | 27.09 | 9.08 | 0.69 |
| 2| 5991 | 35.88 | 12.05 | 0.79 |
| 3| 6048 | 43.66 | 14.64 | 0.87 |
| 4| 6250 | 54.94 | 18.58 | 1.00 |
| 5| 6337 | 61.76 | 20.71 | 1.08 |
| 6| 6519 | 67.36 | 22.61 | 1.14 |
| 7| 6764 | 81.35 | 27.38 | 1.30 |
| 8| 6958 | 92.17 | 31.21 | 1.43 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.63 | 6.56 | 0.61 |
| 10 | 1 | 57 | 5869 | 21.22 | 7.21 | 0.63 |
| 10 | 5 | 283 | 6002 | 29.35 | 10.43 | 0.73 |
| 10 | 10 | 568 | 6173 | 39.69 | 14.52 | 0.85 |
| 10 | 20 | 1139 | 6513 | 60.17 | 22.59 | 1.09 |
| 10 | 39 | 2220 | 7159 | 98.49 | 37.73 | 1.53 |

