--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-02 04:24:05.351328474 UTC |
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
| 1| 5836 | 10.64 | 3.38 | 0.52 |
| 2| 6041 | 12.80 | 4.07 | 0.55 |
| 3| 6236 | 15.07 | 4.78 | 0.58 |
| 5| 6641 | 18.64 | 5.88 | 0.64 |
| 10| 7646 | 29.30 | 9.24 | 0.79 |
| 43| 14281 | 98.66 | 30.82 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 922 | 4.36 | 2.33 | 0.24 |
| 5| 1280 | 6.41 | 3.60 | 0.28 |
| 10| 2170 | 12.13 | 7.25 | 0.40 |
| 54| 10056 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.24 | 7.32 | 0.43 |
| 2 | 113 | 636 | 32.23 | 9.37 | 0.51 |
| 3 | 171 | 747 | 41.19 | 11.92 | 0.60 |
| 4 | 227 | 858 | 52.57 | 15.04 | 0.72 |
| 5 | 284 | 969 | 64.20 | 18.21 | 0.84 |
| 6 | 337 | 1081 | 73.95 | 20.98 | 0.95 |
| 7 | 393 | 1192 | 74.30 | 21.42 | 0.96 |
| 8 | 449 | 1303 | 85.90 | 24.74 | 1.08 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1807 | 24.37 | 7.71 | 0.48 |
| 2| 1954 | 25.88 | 8.79 | 0.51 |
| 3| 2091 | 27.35 | 9.87 | 0.53 |
| 5| 2389 | 31.01 | 12.24 | 0.59 |
| 10| 3259 | 42.68 | 18.84 | 0.77 |
| 40| 7617 | 99.04 | 54.46 | 1.68 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 610 | 22.84 | 7.37 | 0.41 |
| 2| 779 | 23.61 | 8.24 | 0.43 |
| 3| 956 | 26.64 | 9.78 | 0.48 |
| 5| 1094 | 27.04 | 11.19 | 0.50 |
| 10| 2037 | 40.82 | 18.41 | 0.70 |
| 41| 6448 | 96.77 | 54.56 | 1.61 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 647 | 29.17 | 8.91 | 0.48 |
| 2| 874 | 29.86 | 9.81 | 0.50 |
| 3| 936 | 33.05 | 11.33 | 0.54 |
| 5| 1251 | 35.00 | 13.24 | 0.58 |
| 10| 2071 | 48.91 | 20.48 | 0.78 |
| 35| 5747 | 99.31 | 51.25 | 1.57 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 690 | 33.87 | 10.16 | 0.53 |
| 2| 806 | 35.85 | 11.38 | 0.56 |
| 3| 942 | 37.91 | 12.62 | 0.59 |
| 5| 1256 | 42.68 | 15.29 | 0.66 |
| 10| 1965 | 53.24 | 21.56 | 0.82 |
| 29| 4975 | 99.59 | 47.22 | 1.51 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5787 | 27.16 | 9.10 | 0.69 |
| 2| 6009 | 36.98 | 12.45 | 0.80 |
| 3| 6064 | 45.05 | 15.12 | 0.89 |
| 4| 6230 | 51.60 | 17.33 | 0.97 |
| 5| 6493 | 65.48 | 22.05 | 1.12 |
| 6| 6482 | 69.63 | 23.41 | 1.17 |
| 7| 6850 | 84.75 | 28.66 | 1.34 |
| 8| 6971 | 94.04 | 31.79 | 1.45 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 1 | 56 | 5867 | 20.78 | 7.06 | 0.63 |
| 10 | 5 | 285 | 6004 | 29.35 | 10.43 | 0.73 |
| 10 | 10 | 569 | 6174 | 39.51 | 14.45 | 0.85 |
| 10 | 20 | 1139 | 6513 | 59.54 | 22.38 | 1.08 |
| 10 | 30 | 1709 | 6855 | 79.60 | 30.31 | 1.31 |
| 10 | 39 | 2221 | 7160 | 99.82 | 38.19 | 1.55 |

