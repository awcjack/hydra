--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-10 04:24:03.782044193 UTC |
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
| 1| 5837 | 10.19 | 3.22 | 0.51 |
| 2| 6037 | 12.34 | 3.90 | 0.54 |
| 3| 6239 | 14.60 | 4.62 | 0.58 |
| 5| 6640 | 18.64 | 5.88 | 0.64 |
| 10| 7644 | 29.02 | 9.14 | 0.79 |
| 43| 14282 | 98.94 | 30.92 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 738 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1277 | 6.41 | 3.60 | 0.28 |
| 10| 2177 | 12.13 | 7.25 | 0.40 |
| 54| 10061 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 34.19 | 9.84 | 0.53 |
| 3 | 170 | 747 | 40.05 | 11.65 | 0.59 |
| 4 | 228 | 858 | 53.93 | 15.38 | 0.73 |
| 5 | 281 | 969 | 59.63 | 17.12 | 0.80 |
| 6 | 338 | 1081 | 70.31 | 20.11 | 0.91 |
| 7 | 396 | 1192 | 85.17 | 24.11 | 1.06 |
| 8 | 450 | 1303 | 92.51 | 26.27 | 1.14 |
| 9 | 505 | 1414 | 95.86 | 27.37 | 1.18 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1785 | 24.00 | 7.62 | 0.48 |
| 2| 1924 | 25.55 | 8.71 | 0.50 |
| 3| 2055 | 27.31 | 9.86 | 0.53 |
| 5| 2391 | 31.40 | 12.34 | 0.60 |
| 10| 3164 | 40.38 | 18.20 | 0.75 |
| 40| 7482 | 94.58 | 53.27 | 1.63 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 605 | 22.80 | 7.37 | 0.41 |
| 2| 801 | 25.12 | 8.69 | 0.45 |
| 3| 971 | 26.57 | 9.77 | 0.48 |
| 5| 1202 | 29.63 | 11.95 | 0.53 |
| 10| 1926 | 38.68 | 17.79 | 0.68 |
| 42| 6769 | 98.49 | 55.77 | 1.65 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 658 | 29.13 | 8.90 | 0.48 |
| 2| 737 | 30.23 | 9.85 | 0.50 |
| 3| 1048 | 31.65 | 10.97 | 0.53 |
| 5| 1285 | 37.66 | 13.97 | 0.61 |
| 10| 1933 | 46.58 | 19.79 | 0.75 |
| 37| 6099 | 98.74 | 52.49 | 1.59 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 686 | 33.79 | 10.15 | 0.53 |
| 2| 807 | 35.92 | 11.40 | 0.56 |
| 3| 964 | 37.95 | 12.63 | 0.59 |
| 5| 1301 | 43.16 | 15.45 | 0.67 |
| 10| 1946 | 52.64 | 21.38 | 0.82 |
| 28| 4975 | 98.29 | 46.19 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5836 | 26.96 | 9.06 | 0.69 |
| 2| 5920 | 35.84 | 12.04 | 0.79 |
| 3| 6160 | 45.73 | 15.42 | 0.90 |
| 4| 6384 | 57.37 | 19.41 | 1.03 |
| 5| 6456 | 63.89 | 21.50 | 1.11 |
| 6| 6503 | 70.59 | 23.80 | 1.18 |
| 7| 6727 | 84.53 | 28.58 | 1.34 |
| 8| 6784 | 88.15 | 29.65 | 1.37 |
| 9| 7032 | 98.69 | 33.24 | 1.50 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 5 | 284 | 6003 | 29.35 | 10.43 | 0.73 |
| 10 | 20 | 1140 | 6514 | 59.10 | 22.22 | 1.07 |
| 10 | 30 | 1707 | 6853 | 80.04 | 30.46 | 1.32 |
| 10 | 39 | 2221 | 7160 | 98.05 | 37.58 | 1.53 |

