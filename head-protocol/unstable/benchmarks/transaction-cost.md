--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-20 04:30:23.42599922 UTC |
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
| 1| 5841 | 10.38 | 3.29 | 0.51 |
| 2| 6037 | 12.67 | 4.01 | 0.55 |
| 3| 6236 | 14.47 | 4.57 | 0.57 |
| 5| 6638 | 18.84 | 5.95 | 0.64 |
| 10| 7646 | 29.12 | 9.18 | 0.79 |
| 43| 14281 | 99.23 | 31.02 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 738 | 3.38 | 1.73 | 0.22 |
| 3| 922 | 4.36 | 2.33 | 0.24 |
| 5| 1283 | 6.41 | 3.60 | 0.28 |
| 10| 2175 | 12.13 | 7.25 | 0.40 |
| 54| 10052 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 113 | 636 | 34.19 | 9.84 | 0.53 |
| 3 | 171 | 747 | 43.57 | 12.47 | 0.63 |
| 4 | 228 | 858 | 49.58 | 14.32 | 0.69 |
| 5 | 284 | 969 | 58.13 | 16.76 | 0.78 |
| 6 | 338 | 1081 | 71.45 | 20.34 | 0.92 |
| 7 | 394 | 1192 | 82.95 | 23.58 | 1.04 |
| 8 | 452 | 1303 | 84.92 | 24.40 | 1.07 |
| 9 | 505 | 1414 | 89.50 | 25.85 | 1.12 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1789 | 24.29 | 7.69 | 0.48 |
| 2| 1992 | 26.42 | 8.96 | 0.52 |
| 3| 2087 | 27.85 | 10.01 | 0.54 |
| 5| 2417 | 32.64 | 12.68 | 0.61 |
| 10| 3146 | 41.05 | 18.38 | 0.75 |
| 38| 7230 | 93.17 | 51.52 | 1.59 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 643 | 22.81 | 7.37 | 0.42 |
| 2| 745 | 23.61 | 8.25 | 0.43 |
| 3| 995 | 26.88 | 9.85 | 0.48 |
| 5| 1187 | 29.14 | 11.78 | 0.52 |
| 10| 1975 | 39.83 | 18.11 | 0.69 |
| 42| 6771 | 99.88 | 56.15 | 1.66 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 689 | 27.54 | 8.47 | 0.46 |
| 2| 812 | 29.22 | 9.61 | 0.49 |
| 3| 941 | 32.76 | 11.24 | 0.54 |
| 5| 1179 | 36.43 | 13.59 | 0.59 |
| 10| 2008 | 47.63 | 20.09 | 0.77 |
| 36| 5711 | 99.49 | 51.88 | 1.58 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 695 | 33.87 | 10.16 | 0.53 |
| 2| 877 | 36.64 | 11.62 | 0.57 |
| 3| 896 | 37.24 | 12.41 | 0.58 |
| 5| 1321 | 43.40 | 15.50 | 0.67 |
| 10| 2026 | 53.99 | 21.79 | 0.83 |
| 31| 4894 | 98.81 | 48.18 | 1.51 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5697 | 22.97 | 7.57 | 0.64 |
| 2| 5845 | 31.40 | 10.44 | 0.74 |
| 3| 6111 | 44.80 | 15.05 | 0.89 |
| 4| 6262 | 51.00 | 17.17 | 0.96 |
| 5| 6350 | 60.50 | 20.32 | 1.06 |
| 6| 6604 | 74.18 | 24.99 | 1.22 |
| 7| 6639 | 76.42 | 25.72 | 1.25 |
| 8| 6903 | 89.84 | 30.31 | 1.40 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5835 | 17.86 | 5.96 | 0.59 |
| 10 | 1 | 57 | 5869 | 20.52 | 6.98 | 0.62 |
| 10 | 5 | 285 | 6004 | 30.23 | 10.73 | 0.74 |
| 10 | 10 | 569 | 6173 | 39.51 | 14.45 | 0.85 |
| 10 | 20 | 1137 | 6511 | 59.73 | 22.44 | 1.08 |
| 10 | 30 | 1708 | 6854 | 79.78 | 30.37 | 1.32 |
| 10 | 39 | 2217 | 7156 | 99.82 | 38.19 | 1.55 |

