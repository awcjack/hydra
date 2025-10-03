--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-03 04:22:57.694829989 UTC |
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
| 2| 6037 | 12.23 | 3.86 | 0.54 |
| 3| 6238 | 15.14 | 4.81 | 0.58 |
| 5| 6638 | 18.41 | 5.80 | 0.63 |
| 10| 7646 | 28.81 | 9.07 | 0.78 |
| 43| 14281 | 98.56 | 30.79 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 558 | 2.44 | 1.16 | 0.20 |
| 2| 742 | 3.38 | 1.73 | 0.22 |
| 3| 920 | 4.36 | 2.33 | 0.24 |
| 5| 1278 | 6.41 | 3.60 | 0.28 |
| 10| 2177 | 12.13 | 7.25 | 0.40 |
| 54| 10053 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.42 | 7.12 | 0.42 |
| 2 | 114 | 636 | 33.25 | 9.62 | 0.52 |
| 3 | 170 | 747 | 40.13 | 11.66 | 0.59 |
| 4 | 227 | 858 | 49.44 | 14.26 | 0.69 |
| 5 | 283 | 969 | 62.43 | 17.78 | 0.83 |
| 6 | 337 | 1085 | 73.01 | 20.71 | 0.94 |
| 7 | 394 | 1192 | 80.44 | 22.89 | 1.02 |
| 8 | 448 | 1303 | 91.46 | 25.92 | 1.13 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1791 | 24.29 | 7.69 | 0.48 |
| 2| 1952 | 25.47 | 8.69 | 0.50 |
| 3| 2120 | 28.09 | 10.09 | 0.54 |
| 5| 2483 | 33.35 | 12.89 | 0.62 |
| 10| 3112 | 40.50 | 18.23 | 0.75 |
| 39| 7607 | 98.61 | 53.73 | 1.67 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 598 | 22.57 | 7.30 | 0.41 |
| 2| 726 | 22.60 | 7.95 | 0.42 |
| 3| 872 | 25.51 | 9.46 | 0.46 |
| 5| 1306 | 32.33 | 12.69 | 0.56 |
| 10| 2033 | 38.58 | 17.76 | 0.68 |
| 42| 6616 | 97.80 | 55.55 | 1.63 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 678 | 29.13 | 8.90 | 0.48 |
| 2| 810 | 30.87 | 10.05 | 0.51 |
| 3| 968 | 33.47 | 11.45 | 0.55 |
| 5| 1251 | 37.32 | 13.87 | 0.61 |
| 10| 2111 | 45.95 | 19.68 | 0.76 |
| 37| 5976 | 96.46 | 51.80 | 1.57 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 679 | 33.87 | 10.16 | 0.53 |
| 2| 839 | 35.92 | 11.40 | 0.56 |
| 3| 1016 | 38.55 | 12.81 | 0.60 |
| 5| 1286 | 42.61 | 15.27 | 0.66 |
| 10| 2083 | 54.64 | 21.99 | 0.84 |
| 28| 5025 | 98.49 | 46.23 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5805 | 27.09 | 9.08 | 0.69 |
| 2| 5894 | 34.91 | 11.68 | 0.78 |
| 3| 6118 | 44.53 | 14.99 | 0.89 |
| 4| 6209 | 50.36 | 16.85 | 0.95 |
| 5| 6478 | 65.36 | 22.04 | 1.12 |
| 6| 6510 | 69.38 | 23.31 | 1.17 |
| 7| 6807 | 82.98 | 27.97 | 1.32 |
| 8| 6751 | 82.25 | 27.65 | 1.31 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 20.00 | 6.69 | 0.62 |
| 10 | 1 | 57 | 5868 | 21.66 | 7.37 | 0.64 |
| 10 | 10 | 570 | 6174 | 39.06 | 14.30 | 0.84 |
| 10 | 20 | 1141 | 6515 | 60.17 | 22.59 | 1.09 |
| 10 | 30 | 1705 | 6852 | 80.92 | 30.76 | 1.33 |
| 10 | 37 | 2106 | 7092 | 95.02 | 36.33 | 1.49 |

