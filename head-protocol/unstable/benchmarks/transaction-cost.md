--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-11 04:26:10.689500897 UTC |
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
| 1| 5836 | 10.17 | 3.22 | 0.51 |
| 2| 6037 | 12.44 | 3.94 | 0.54 |
| 3| 6238 | 14.52 | 4.59 | 0.58 |
| 5| 6641 | 18.64 | 5.88 | 0.64 |
| 10| 7647 | 28.94 | 9.11 | 0.79 |
| 43| 14282 | 99.14 | 30.99 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 736 | 3.38 | 1.73 | 0.22 |
| 3| 922 | 4.36 | 2.33 | 0.24 |
| 5| 1283 | 6.41 | 3.60 | 0.28 |
| 10| 2180 | 12.13 | 7.25 | 0.40 |
| 54| 10032 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 529 | 24.46 | 7.13 | 0.42 |
| 2 | 114 | 640 | 33.17 | 9.59 | 0.52 |
| 3 | 171 | 747 | 42.34 | 12.17 | 0.61 |
| 4 | 226 | 858 | 52.32 | 14.95 | 0.72 |
| 5 | 284 | 969 | 61.41 | 17.58 | 0.82 |
| 6 | 339 | 1081 | 74.87 | 21.16 | 0.96 |
| 7 | 395 | 1192 | 86.19 | 24.26 | 1.07 |
| 8 | 448 | 1303 | 87.31 | 24.93 | 1.09 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1747 | 22.92 | 7.32 | 0.47 |
| 2| 1998 | 26.38 | 8.96 | 0.52 |
| 3| 2087 | 27.31 | 9.86 | 0.53 |
| 5| 2418 | 32.12 | 12.55 | 0.61 |
| 10| 3137 | 40.46 | 18.22 | 0.75 |
| 38| 7162 | 90.63 | 50.82 | 1.56 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 645 | 22.81 | 7.37 | 0.42 |
| 2| 760 | 24.27 | 8.46 | 0.44 |
| 3| 946 | 27.06 | 9.90 | 0.48 |
| 5| 1227 | 29.19 | 11.80 | 0.53 |
| 10| 2144 | 41.87 | 18.68 | 0.72 |
| 39| 6409 | 96.63 | 53.25 | 1.60 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 687 | 27.54 | 8.47 | 0.46 |
| 2| 812 | 29.26 | 9.62 | 0.49 |
| 3| 988 | 33.43 | 11.44 | 0.55 |
| 5| 1248 | 34.89 | 13.21 | 0.58 |
| 10| 1954 | 46.92 | 19.87 | 0.76 |
| 37| 5897 | 96.91 | 51.90 | 1.57 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 682 | 33.87 | 10.16 | 0.53 |
| 2| 819 | 35.81 | 11.37 | 0.56 |
| 3| 891 | 37.24 | 12.41 | 0.58 |
| 5| 1382 | 43.88 | 15.66 | 0.68 |
| 10| 1942 | 53.12 | 21.53 | 0.82 |
| 29| 4903 | 99.43 | 47.12 | 1.51 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5819 | 27.00 | 9.07 | 0.69 |
| 2| 5918 | 35.97 | 12.08 | 0.79 |
| 3| 6041 | 43.80 | 14.67 | 0.88 |
| 4| 6309 | 56.18 | 18.92 | 1.02 |
| 5| 6375 | 63.11 | 21.22 | 1.09 |
| 6| 6548 | 73.90 | 24.97 | 1.22 |
| 7| 6729 | 80.68 | 27.16 | 1.29 |
| 8| 6923 | 87.73 | 29.50 | 1.38 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 18.30 | 6.11 | 0.60 |
| 10 | 1 | 57 | 5869 | 20.34 | 6.91 | 0.62 |
| 10 | 10 | 569 | 6174 | 39.95 | 14.60 | 0.85 |
| 10 | 20 | 1137 | 6511 | 60.42 | 22.68 | 1.09 |
| 10 | 30 | 1706 | 6852 | 80.04 | 30.46 | 1.32 |
| 10 | 39 | 2220 | 7159 | 97.61 | 37.43 | 1.52 |

