--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-31 04:29:14.927498704 UTC |
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
| 1| 5837 | 10.55 | 3.35 | 0.52 |
| 2| 6038 | 12.46 | 3.94 | 0.55 |
| 3| 6240 | 14.31 | 4.52 | 0.57 |
| 5| 6640 | 18.71 | 5.91 | 0.64 |
| 10| 7646 | 28.92 | 9.11 | 0.79 |
| 43| 14282 | 98.94 | 30.92 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 556 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 915 | 4.36 | 2.33 | 0.24 |
| 5| 1279 | 6.41 | 3.60 | 0.28 |
| 10| 2171 | 12.13 | 7.25 | 0.40 |
| 54| 10052 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.42 | 7.12 | 0.42 |
| 2 | 114 | 636 | 33.18 | 9.60 | 0.52 |
| 3 | 170 | 747 | 41.11 | 11.90 | 0.60 |
| 4 | 228 | 858 | 49.35 | 14.24 | 0.69 |
| 5 | 282 | 969 | 55.88 | 16.22 | 0.76 |
| 6 | 338 | 1081 | 75.50 | 21.35 | 0.96 |
| 7 | 395 | 1192 | 84.50 | 23.90 | 1.06 |
| 8 | 450 | 1303 | 96.53 | 27.28 | 1.18 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1748 | 22.93 | 7.32 | 0.47 |
| 2| 1886 | 24.43 | 8.40 | 0.49 |
| 3| 2013 | 26.32 | 9.58 | 0.52 |
| 5| 2324 | 29.84 | 11.92 | 0.58 |
| 10| 3124 | 40.88 | 18.34 | 0.75 |
| 39| 7664 | 99.72 | 54.04 | 1.68 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 624 | 22.50 | 7.29 | 0.41 |
| 2| 746 | 23.58 | 8.22 | 0.43 |
| 3| 926 | 26.95 | 9.87 | 0.48 |
| 5| 1240 | 29.01 | 11.75 | 0.52 |
| 10| 1986 | 40.59 | 18.35 | 0.70 |
| 41| 6611 | 96.46 | 54.53 | 1.61 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 639 | 29.13 | 8.90 | 0.48 |
| 2| 770 | 28.55 | 9.40 | 0.48 |
| 3| 872 | 31.97 | 11.01 | 0.53 |
| 5| 1257 | 35.01 | 13.24 | 0.58 |
| 10| 1855 | 45.23 | 19.38 | 0.74 |
| 36| 6083 | 98.37 | 51.77 | 1.59 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 667 | 33.79 | 10.15 | 0.53 |
| 2| 845 | 36.56 | 11.60 | 0.57 |
| 3| 1023 | 38.66 | 12.84 | 0.60 |
| 5| 1274 | 42.53 | 15.25 | 0.66 |
| 10| 2038 | 54.92 | 22.06 | 0.84 |
| 29| 4866 | 99.15 | 47.03 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5779 | 27.13 | 9.09 | 0.69 |
| 2| 5960 | 35.84 | 12.03 | 0.79 |
| 3| 6107 | 46.08 | 15.53 | 0.90 |
| 4| 6175 | 51.42 | 17.24 | 0.96 |
| 5| 6266 | 58.12 | 19.45 | 1.04 |
| 6| 6509 | 70.04 | 23.52 | 1.17 |
| 7| 6982 | 87.92 | 29.79 | 1.38 |
| 8| 6884 | 93.08 | 31.43 | 1.43 |
| 9| 6866 | 94.52 | 31.77 | 1.44 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 18.75 | 6.26 | 0.60 |
| 10 | 5 | 285 | 6005 | 29.53 | 10.50 | 0.73 |
| 10 | 10 | 571 | 6175 | 38.81 | 14.21 | 0.84 |
| 10 | 20 | 1137 | 6512 | 59.10 | 22.22 | 1.07 |
| 10 | 30 | 1706 | 6852 | 79.60 | 30.31 | 1.31 |
| 10 | 39 | 2220 | 7159 | 98.05 | 37.58 | 1.53 |

