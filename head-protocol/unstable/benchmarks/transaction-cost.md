--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-05 04:22:31.411003331 UTC |
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
| 1| 5837 | 10.93 | 3.49 | 0.52 |
| 2| 6037 | 12.23 | 3.86 | 0.54 |
| 3| 6239 | 14.72 | 4.66 | 0.58 |
| 5| 6643 | 18.84 | 5.95 | 0.64 |
| 10| 7646 | 29.18 | 9.20 | 0.79 |
| 43| 14279 | 98.99 | 30.94 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 741 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1276 | 6.41 | 3.60 | 0.28 |
| 10| 2180 | 12.13 | 7.25 | 0.40 |
| 54| 10071 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 529 | 24.42 | 7.12 | 0.42 |
| 2 | 114 | 640 | 33.18 | 9.60 | 0.52 |
| 3 | 171 | 747 | 43.64 | 12.50 | 0.63 |
| 4 | 227 | 858 | 53.79 | 15.30 | 0.73 |
| 5 | 283 | 969 | 64.26 | 18.23 | 0.84 |
| 6 | 341 | 1081 | 69.61 | 19.86 | 0.90 |
| 7 | 393 | 1192 | 74.10 | 21.32 | 0.96 |
| 8 | 451 | 1307 | 83.87 | 24.25 | 1.06 |
| 9 | 504 | 1414 | 96.27 | 27.53 | 1.19 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1808 | 24.29 | 7.69 | 0.48 |
| 2| 1990 | 26.76 | 9.04 | 0.52 |
| 3| 2081 | 26.86 | 9.75 | 0.53 |
| 5| 2278 | 29.22 | 11.73 | 0.57 |
| 10| 3198 | 42.45 | 18.76 | 0.77 |
| 40| 7743 | 98.25 | 54.30 | 1.68 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 606 | 22.84 | 7.37 | 0.41 |
| 2| 699 | 22.62 | 7.97 | 0.42 |
| 3| 972 | 26.94 | 9.86 | 0.48 |
| 5| 1264 | 31.21 | 12.38 | 0.55 |
| 10| 2076 | 41.14 | 18.50 | 0.71 |
| 39| 6412 | 94.03 | 52.55 | 1.57 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 698 | 27.54 | 8.47 | 0.46 |
| 2| 772 | 30.91 | 10.06 | 0.51 |
| 3| 953 | 30.90 | 10.74 | 0.52 |
| 5| 1268 | 35.08 | 13.26 | 0.59 |
| 10| 1987 | 44.08 | 19.12 | 0.73 |
| 34| 5847 | 95.69 | 49.66 | 1.54 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 674 | 33.87 | 10.16 | 0.53 |
| 2| 765 | 35.14 | 11.16 | 0.55 |
| 3| 895 | 37.13 | 12.38 | 0.58 |
| 5| 1279 | 42.61 | 15.27 | 0.66 |
| 10| 1897 | 52.74 | 21.40 | 0.81 |
| 28| 4720 | 95.51 | 45.31 | 1.46 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5810 | 27.00 | 9.07 | 0.69 |
| 2| 5960 | 35.96 | 12.08 | 0.79 |
| 3| 6099 | 44.77 | 15.06 | 0.89 |
| 4| 6296 | 52.18 | 17.61 | 0.98 |
| 5| 6420 | 60.77 | 20.53 | 1.07 |
| 6| 6644 | 71.02 | 23.95 | 1.19 |
| 7| 6930 | 85.07 | 28.72 | 1.35 |
| 8| 6853 | 90.76 | 30.62 | 1.41 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 20.07 | 6.71 | 0.62 |
| 10 | 5 | 285 | 6005 | 28.90 | 10.28 | 0.72 |
| 10 | 10 | 569 | 6173 | 39.51 | 14.45 | 0.85 |
| 10 | 38 | 2164 | 7126 | 96.88 | 37.08 | 1.51 |

