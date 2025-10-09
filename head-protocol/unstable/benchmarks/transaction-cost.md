--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-09 09:17:16.376437374 UTC |
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
| 1| 5837 | 10.48 | 3.33 | 0.52 |
| 2| 6035 | 12.65 | 4.01 | 0.55 |
| 3| 6236 | 14.29 | 4.51 | 0.57 |
| 5| 6643 | 18.52 | 5.84 | 0.63 |
| 10| 7646 | 28.94 | 9.11 | 0.79 |
| 43| 14281 | 98.76 | 30.86 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 559 | 2.44 | 1.16 | 0.20 |
| 2| 742 | 3.38 | 1.73 | 0.22 |
| 3| 914 | 4.36 | 2.33 | 0.24 |
| 5| 1277 | 6.41 | 3.60 | 0.28 |
| 10| 2168 | 12.13 | 7.25 | 0.40 |
| 54| 10074 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.42 | 7.12 | 0.42 |
| 2 | 113 | 636 | 34.27 | 9.87 | 0.53 |
| 3 | 170 | 747 | 43.88 | 12.56 | 0.63 |
| 4 | 225 | 858 | 53.50 | 15.28 | 0.73 |
| 5 | 281 | 974 | 62.79 | 17.94 | 0.83 |
| 6 | 340 | 1081 | 68.47 | 19.67 | 0.89 |
| 7 | 393 | 1192 | 82.80 | 23.50 | 1.04 |
| 8 | 450 | 1303 | 94.74 | 26.81 | 1.17 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1785 | 23.92 | 7.60 | 0.48 |
| 2| 1970 | 26.76 | 9.04 | 0.52 |
| 3| 2055 | 26.98 | 9.78 | 0.53 |
| 5| 2414 | 32.49 | 12.64 | 0.61 |
| 10| 3093 | 39.23 | 17.88 | 0.73 |
| 40| 7750 | 99.59 | 54.65 | 1.69 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 628 | 22.80 | 7.37 | 0.42 |
| 2| 695 | 22.55 | 7.94 | 0.42 |
| 3| 898 | 25.02 | 9.30 | 0.46 |
| 5| 1162 | 27.97 | 11.46 | 0.51 |
| 10| 2105 | 42.95 | 19.00 | 0.73 |
| 42| 6646 | 97.20 | 55.40 | 1.63 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 635 | 26.79 | 8.25 | 0.45 |
| 2| 829 | 29.15 | 9.59 | 0.49 |
| 3| 1018 | 31.57 | 10.95 | 0.53 |
| 5| 1300 | 37.70 | 13.98 | 0.61 |
| 10| 2175 | 46.17 | 19.76 | 0.76 |
| 37| 6132 | 99.53 | 52.76 | 1.60 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 684 | 33.83 | 10.16 | 0.53 |
| 2| 831 | 35.92 | 11.40 | 0.56 |
| 3| 1006 | 38.51 | 12.80 | 0.60 |
| 5| 1318 | 43.24 | 15.46 | 0.67 |
| 10| 2120 | 55.37 | 22.21 | 0.85 |
| 30| 4813 | 97.73 | 47.23 | 1.49 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5840 | 26.96 | 9.06 | 0.69 |
| 2| 5932 | 36.04 | 12.11 | 0.79 |
| 3| 6063 | 44.77 | 15.06 | 0.89 |
| 4| 6243 | 52.92 | 17.82 | 0.98 |
| 5| 6324 | 61.15 | 20.53 | 1.07 |
| 6| 6606 | 75.60 | 25.49 | 1.24 |
| 7| 6620 | 77.70 | 26.10 | 1.26 |
| 8| 7024 | 94.58 | 32.02 | 1.45 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5835 | 20.26 | 6.78 | 0.62 |
| 10 | 1 | 57 | 5869 | 20.78 | 7.06 | 0.63 |
| 10 | 5 | 284 | 6003 | 28.90 | 10.28 | 0.72 |
| 10 | 20 | 1138 | 6513 | 60.17 | 22.59 | 1.09 |
| 10 | 30 | 1710 | 6857 | 80.92 | 30.76 | 1.33 |
| 10 | 38 | 2164 | 7126 | 96.44 | 36.92 | 1.51 |

