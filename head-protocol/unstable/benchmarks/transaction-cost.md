--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-25 05:20:21.550534517 UTC |
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
| 1| 5834 | 10.19 | 3.22 | 0.51 |
| 2| 6038 | 12.65 | 4.01 | 0.55 |
| 3| 6239 | 14.40 | 4.55 | 0.57 |
| 5| 6638 | 18.83 | 5.95 | 0.64 |
| 10| 7651 | 29.00 | 9.14 | 0.79 |
| 43| 14279 | 98.58 | 30.79 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 737 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1276 | 6.41 | 3.60 | 0.28 |
| 10| 2165 | 12.13 | 7.25 | 0.40 |
| 54| 10074 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 32.19 | 9.36 | 0.51 |
| 3 | 171 | 747 | 40.00 | 11.63 | 0.59 |
| 4 | 227 | 858 | 50.57 | 14.55 | 0.70 |
| 5 | 285 | 969 | 59.86 | 17.18 | 0.80 |
| 6 | 338 | 1081 | 75.35 | 21.35 | 0.96 |
| 7 | 393 | 1192 | 72.27 | 20.93 | 0.94 |
| 8 | 449 | 1303 | 81.30 | 23.43 | 1.03 |
| 9 | 505 | 1414 | 88.87 | 25.80 | 1.12 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1783 | 23.92 | 7.60 | 0.48 |
| 2| 1925 | 25.47 | 8.70 | 0.50 |
| 3| 2114 | 27.94 | 10.05 | 0.54 |
| 5| 2359 | 31.03 | 12.25 | 0.59 |
| 10| 3187 | 41.06 | 18.38 | 0.75 |
| 39| 7379 | 94.38 | 52.53 | 1.62 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 638 | 22.81 | 7.37 | 0.42 |
| 2| 722 | 22.52 | 7.93 | 0.42 |
| 3| 919 | 25.06 | 9.31 | 0.46 |
| 5| 1201 | 29.99 | 12.03 | 0.53 |
| 10| 1912 | 37.39 | 17.44 | 0.66 |
| 44| 6820 | 99.21 | 57.29 | 1.66 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 639 | 29.13 | 8.90 | 0.48 |
| 2| 903 | 29.97 | 9.84 | 0.50 |
| 3| 958 | 30.94 | 10.75 | 0.52 |
| 5| 1292 | 35.76 | 13.47 | 0.59 |
| 10| 1980 | 46.66 | 19.81 | 0.76 |
| 37| 6064 | 99.38 | 52.65 | 1.60 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 686 | 33.87 | 10.16 | 0.53 |
| 2| 857 | 36.56 | 11.60 | 0.57 |
| 3| 1008 | 38.47 | 12.79 | 0.60 |
| 5| 1220 | 41.82 | 15.03 | 0.65 |
| 10| 1959 | 53.42 | 21.61 | 0.82 |
| 28| 4785 | 96.96 | 45.78 | 1.47 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5845 | 26.92 | 9.05 | 0.69 |
| 2| 5886 | 32.57 | 10.88 | 0.75 |
| 3| 6164 | 45.93 | 15.48 | 0.90 |
| 4| 6280 | 54.82 | 18.49 | 1.00 |
| 5| 6487 | 64.01 | 21.55 | 1.11 |
| 6| 6483 | 69.90 | 23.52 | 1.17 |
| 7| 6808 | 85.65 | 28.90 | 1.35 |
| 8| 6863 | 89.73 | 30.15 | 1.39 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.38 | 6.48 | 0.61 |
| 10 | 1 | 57 | 5868 | 19.45 | 6.61 | 0.61 |
| 10 | 10 | 567 | 6172 | 39.25 | 14.36 | 0.84 |
| 10 | 20 | 1139 | 6514 | 59.73 | 22.44 | 1.08 |
| 10 | 30 | 1706 | 6852 | 80.22 | 30.52 | 1.32 |
| 10 | 39 | 2221 | 7161 | 98.05 | 37.58 | 1.53 |

