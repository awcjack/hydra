--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-19 04:28:57.603997242 UTC |
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
| 1| 5834 | 10.38 | 3.29 | 0.51 |
| 2| 6039 | 12.53 | 3.97 | 0.55 |
| 3| 6238 | 14.59 | 4.61 | 0.58 |
| 5| 6638 | 18.84 | 5.95 | 0.64 |
| 10| 7647 | 29.09 | 9.17 | 0.79 |
| 43| 14281 | 98.78 | 30.87 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 742 | 3.38 | 1.73 | 0.22 |
| 3| 920 | 4.36 | 2.33 | 0.24 |
| 5| 1276 | 6.41 | 3.60 | 0.28 |
| 10| 2180 | 12.13 | 7.25 | 0.40 |
| 54| 10062 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.46 | 7.13 | 0.42 |
| 2 | 114 | 636 | 34.19 | 9.84 | 0.53 |
| 3 | 169 | 747 | 44.07 | 12.65 | 0.63 |
| 4 | 226 | 858 | 50.96 | 14.62 | 0.71 |
| 5 | 284 | 969 | 64.87 | 18.41 | 0.85 |
| 6 | 338 | 1081 | 64.15 | 18.63 | 0.85 |
| 7 | 394 | 1192 | 83.77 | 23.68 | 1.05 |
| 8 | 449 | 1303 | 98.28 | 27.60 | 1.20 |
| 9 | 505 | 1414 | 88.49 | 25.66 | 1.11 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1819 | 24.29 | 7.69 | 0.48 |
| 2| 1925 | 25.47 | 8.70 | 0.50 |
| 3| 2058 | 27.24 | 9.84 | 0.53 |
| 5| 2318 | 30.08 | 11.98 | 0.58 |
| 10| 3261 | 43.57 | 19.07 | 0.78 |
| 39| 7551 | 99.24 | 53.85 | 1.67 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 634 | 22.84 | 7.40 | 0.42 |
| 2| 755 | 24.35 | 8.47 | 0.44 |
| 3| 853 | 24.11 | 9.04 | 0.45 |
| 5| 1218 | 29.19 | 11.80 | 0.52 |
| 10| 1874 | 37.00 | 17.33 | 0.66 |
| 41| 6557 | 98.95 | 55.22 | 1.64 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 647 | 29.17 | 8.91 | 0.48 |
| 2| 887 | 29.89 | 9.82 | 0.50 |
| 3| 1026 | 31.61 | 10.96 | 0.53 |
| 5| 1255 | 35.08 | 13.26 | 0.58 |
| 10| 1904 | 43.47 | 18.93 | 0.72 |
| 37| 5961 | 98.28 | 52.30 | 1.58 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 696 | 33.83 | 10.15 | 0.53 |
| 2| 811 | 35.92 | 11.40 | 0.56 |
| 3| 896 | 37.24 | 12.41 | 0.58 |
| 5| 1340 | 43.16 | 15.45 | 0.67 |
| 10| 2087 | 54.70 | 22.01 | 0.84 |
| 28| 4714 | 95.74 | 45.42 | 1.46 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5789 | 27.00 | 9.08 | 0.69 |
| 2| 5916 | 34.75 | 11.63 | 0.78 |
| 3| 6037 | 45.14 | 15.19 | 0.89 |
| 4| 6245 | 54.81 | 18.44 | 1.00 |
| 5| 6406 | 61.77 | 20.78 | 1.08 |
| 6| 6652 | 75.18 | 25.44 | 1.23 |
| 7| 6886 | 85.42 | 28.84 | 1.35 |
| 8| 6977 | 93.67 | 31.61 | 1.44 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.38 | 6.48 | 0.61 |
| 10 | 5 | 283 | 6002 | 28.46 | 10.13 | 0.72 |
| 10 | 10 | 569 | 6173 | 39.06 | 14.30 | 0.84 |
| 10 | 20 | 1140 | 6514 | 60.42 | 22.68 | 1.09 |
| 10 | 30 | 1708 | 6854 | 80.04 | 30.46 | 1.32 |
| 10 | 38 | 2164 | 7127 | 97.33 | 37.23 | 1.52 |

