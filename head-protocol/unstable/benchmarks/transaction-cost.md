--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-09 03:20:54.72053233 UTC |
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
| 2| 6035 | 12.41 | 3.92 | 0.54 |
| 3| 6239 | 14.50 | 4.58 | 0.58 |
| 5| 6641 | 18.41 | 5.80 | 0.63 |
| 10| 7644 | 29.14 | 9.19 | 0.79 |
| 43| 14281 | 98.99 | 30.94 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 742 | 3.38 | 1.73 | 0.22 |
| 3| 921 | 4.36 | 2.33 | 0.24 |
| 5| 1283 | 6.41 | 3.60 | 0.28 |
| 10| 2183 | 12.13 | 7.25 | 0.40 |
| 54| 10054 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 529 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 32.23 | 9.37 | 0.51 |
| 3 | 171 | 747 | 40.25 | 11.70 | 0.59 |
| 4 | 226 | 858 | 52.25 | 14.98 | 0.72 |
| 5 | 284 | 969 | 64.60 | 18.34 | 0.85 |
| 6 | 337 | 1081 | 75.16 | 21.20 | 0.96 |
| 7 | 394 | 1192 | 76.77 | 22.05 | 0.98 |
| 8 | 448 | 1303 | 96.28 | 27.12 | 1.18 |
| 9 | 504 | 1414 | 99.00 | 28.23 | 1.22 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1749 | 22.92 | 7.32 | 0.47 |
| 2| 1882 | 24.80 | 8.49 | 0.49 |
| 3| 2097 | 28.10 | 10.09 | 0.54 |
| 5| 2611 | 34.24 | 13.14 | 0.64 |
| 10| 3268 | 42.92 | 18.90 | 0.78 |
| 39| 7421 | 95.20 | 52.75 | 1.63 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 660 | 22.81 | 7.38 | 0.42 |
| 2| 789 | 24.05 | 8.39 | 0.44 |
| 3| 830 | 24.13 | 9.05 | 0.45 |
| 5| 1188 | 29.62 | 11.96 | 0.53 |
| 10| 2005 | 39.55 | 18.04 | 0.69 |
| 42| 6590 | 96.87 | 55.33 | 1.62 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 682 | 27.54 | 8.47 | 0.46 |
| 2| 827 | 31.62 | 10.27 | 0.52 |
| 3| 972 | 30.94 | 10.75 | 0.52 |
| 5| 1192 | 36.38 | 13.58 | 0.59 |
| 10| 1973 | 44.08 | 19.12 | 0.73 |
| 38| 6067 | 99.96 | 53.45 | 1.61 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 691 | 33.83 | 10.15 | 0.53 |
| 2| 817 | 35.92 | 11.40 | 0.56 |
| 3| 970 | 38.21 | 12.71 | 0.59 |
| 5| 1304 | 43.17 | 15.45 | 0.67 |
| 10| 2099 | 55.29 | 22.19 | 0.85 |
| 28| 4903 | 97.40 | 45.91 | 1.48 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5791 | 27.13 | 9.09 | 0.69 |
| 2| 5893 | 34.87 | 11.66 | 0.78 |
| 3| 6012 | 41.48 | 13.87 | 0.85 |
| 4| 6184 | 51.60 | 17.35 | 0.96 |
| 5| 6376 | 64.18 | 21.62 | 1.11 |
| 6| 6593 | 73.94 | 24.90 | 1.22 |
| 7| 6754 | 83.07 | 28.05 | 1.32 |
| 8| 6932 | 91.61 | 30.84 | 1.42 |
| 9| 6910 | 98.99 | 33.28 | 1.49 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5835 | 18.75 | 6.26 | 0.60 |
| 10 | 5 | 285 | 6004 | 28.90 | 10.28 | 0.72 |
| 10 | 20 | 1137 | 6512 | 60.87 | 22.83 | 1.09 |
| 10 | 40 | 2273 | 7189 | 99.66 | 38.24 | 1.55 |
| 10 | 39 | 2220 | 7160 | 97.61 | 37.43 | 1.52 |

