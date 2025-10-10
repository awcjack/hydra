--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-10 08:47:34.553446267 UTC |
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
| 1| 5834 | 10.36 | 3.28 | 0.51 |
| 2| 6035 | 12.65 | 4.01 | 0.55 |
| 3| 6238 | 15.24 | 4.85 | 0.58 |
| 5| 6641 | 18.83 | 5.95 | 0.64 |
| 10| 7647 | 29.11 | 9.17 | 0.79 |
| 43| 14282 | 98.56 | 30.79 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 740 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1274 | 6.41 | 3.60 | 0.28 |
| 10| 2173 | 12.13 | 7.25 | 0.40 |
| 54| 10057 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 34.27 | 9.87 | 0.53 |
| 3 | 171 | 747 | 43.75 | 12.51 | 0.63 |
| 4 | 227 | 862 | 47.69 | 13.86 | 0.67 |
| 5 | 282 | 969 | 59.35 | 17.05 | 0.80 |
| 6 | 338 | 1081 | 65.96 | 18.99 | 0.87 |
| 7 | 394 | 1192 | 76.58 | 21.96 | 0.98 |
| 8 | 449 | 1303 | 83.17 | 23.99 | 1.05 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1804 | 24.29 | 7.69 | 0.48 |
| 2| 1924 | 25.55 | 8.71 | 0.50 |
| 3| 2103 | 28.43 | 10.17 | 0.55 |
| 5| 2319 | 29.89 | 11.93 | 0.58 |
| 10| 3246 | 42.52 | 18.80 | 0.77 |
| 39| 7572 | 98.22 | 53.64 | 1.66 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 625 | 22.84 | 7.38 | 0.42 |
| 2| 789 | 25.52 | 8.78 | 0.45 |
| 3| 830 | 24.13 | 9.05 | 0.45 |
| 5| 1260 | 31.10 | 12.35 | 0.55 |
| 10| 1883 | 36.74 | 17.24 | 0.65 |
| 40| 6559 | 98.20 | 54.35 | 1.62 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 669 | 29.13 | 8.90 | 0.48 |
| 2| 847 | 29.90 | 9.82 | 0.50 |
| 3| 993 | 31.62 | 10.96 | 0.53 |
| 5| 1391 | 36.36 | 13.65 | 0.60 |
| 10| 1887 | 45.83 | 19.56 | 0.74 |
| 35| 5560 | 98.19 | 50.83 | 1.55 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 628 | 33.15 | 9.95 | 0.52 |
| 2| 838 | 35.81 | 11.37 | 0.56 |
| 3| 960 | 37.91 | 12.62 | 0.59 |
| 5| 1316 | 43.17 | 15.45 | 0.67 |
| 10| 2088 | 54.38 | 21.91 | 0.84 |
| 30| 5054 | 99.67 | 47.83 | 1.52 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5807 | 27.00 | 9.08 | 0.69 |
| 2| 5916 | 34.83 | 11.66 | 0.78 |
| 3| 6015 | 41.24 | 13.81 | 0.85 |
| 4| 6379 | 56.87 | 19.24 | 1.03 |
| 5| 6338 | 59.41 | 19.91 | 1.05 |
| 6| 6662 | 75.91 | 25.67 | 1.24 |
| 7| 6868 | 81.98 | 27.79 | 1.32 |
| 8| 6773 | 85.79 | 28.81 | 1.35 |
| 9| 6833 | 97.78 | 32.86 | 1.48 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5835 | 19.19 | 6.41 | 0.61 |
| 10 | 1 | 57 | 5868 | 20.96 | 7.13 | 0.63 |
| 10 | 5 | 285 | 6004 | 28.02 | 9.98 | 0.71 |
| 10 | 10 | 568 | 6172 | 39.51 | 14.45 | 0.85 |
| 10 | 20 | 1136 | 6510 | 59.10 | 22.22 | 1.07 |
| 10 | 30 | 1709 | 6855 | 79.60 | 30.31 | 1.31 |
| 10 | 39 | 2216 | 7156 | 99.82 | 38.19 | 1.55 |

