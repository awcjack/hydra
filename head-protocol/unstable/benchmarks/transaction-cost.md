--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-08 03:36:45.947980612 UTC |
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
| 1| 5834 | 10.61 | 3.37 | 0.52 |
| 2| 6041 | 12.84 | 4.08 | 0.55 |
| 3| 6239 | 14.78 | 4.68 | 0.58 |
| 5| 6641 | 18.84 | 5.95 | 0.64 |
| 10| 7644 | 28.71 | 9.03 | 0.78 |
| 43| 14282 | 98.99 | 30.94 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 559 | 2.44 | 1.16 | 0.20 |
| 2| 742 | 3.38 | 1.73 | 0.22 |
| 3| 924 | 4.36 | 2.33 | 0.24 |
| 5| 1277 | 6.41 | 3.60 | 0.28 |
| 10| 2173 | 12.13 | 7.25 | 0.40 |
| 54| 10065 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 56 | 524 | 24.42 | 7.12 | 0.42 |
| 2 | 114 | 636 | 32.34 | 9.42 | 0.51 |
| 3 | 171 | 747 | 43.60 | 12.49 | 0.63 |
| 4 | 226 | 862 | 52.32 | 14.95 | 0.72 |
| 5 | 284 | 969 | 59.32 | 17.04 | 0.79 |
| 6 | 339 | 1081 | 75.11 | 21.25 | 0.96 |
| 7 | 395 | 1192 | 83.96 | 23.73 | 1.05 |
| 8 | 451 | 1303 | 97.62 | 27.60 | 1.20 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1807 | 24.37 | 7.71 | 0.48 |
| 2| 1882 | 24.80 | 8.49 | 0.49 |
| 3| 2014 | 25.98 | 9.50 | 0.52 |
| 5| 2458 | 32.94 | 12.79 | 0.62 |
| 10| 3236 | 42.91 | 18.89 | 0.78 |
| 41| 7681 | 97.56 | 54.77 | 1.67 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 641 | 22.77 | 7.36 | 0.42 |
| 2| 745 | 23.65 | 8.25 | 0.43 |
| 3| 950 | 26.67 | 9.80 | 0.48 |
| 5| 1323 | 32.18 | 12.65 | 0.56 |
| 10| 1957 | 38.53 | 17.75 | 0.68 |
| 43| 6734 | 99.22 | 56.61 | 1.66 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 647 | 29.13 | 8.90 | 0.48 |
| 2| 848 | 29.22 | 9.61 | 0.49 |
| 3| 1003 | 31.54 | 10.94 | 0.53 |
| 5| 1279 | 35.01 | 13.24 | 0.58 |
| 10| 2020 | 44.59 | 19.27 | 0.74 |
| 37| 6179 | 99.51 | 52.74 | 1.61 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 690 | 33.83 | 10.16 | 0.53 |
| 2| 769 | 35.17 | 11.17 | 0.55 |
| 3| 892 | 37.13 | 12.38 | 0.58 |
| 5| 1285 | 43.43 | 15.51 | 0.67 |
| 10| 1963 | 53.35 | 21.59 | 0.82 |
| 28| 4753 | 96.74 | 45.69 | 1.47 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5806 | 27.13 | 9.09 | 0.69 |
| 2| 5917 | 34.94 | 11.70 | 0.78 |
| 3| 6140 | 45.97 | 15.50 | 0.90 |
| 4| 6288 | 54.78 | 18.43 | 1.00 |
| 5| 6309 | 58.85 | 19.79 | 1.05 |
| 6| 6552 | 73.34 | 24.71 | 1.21 |
| 7| 6803 | 83.28 | 28.03 | 1.32 |
| 8| 6798 | 91.60 | 30.86 | 1.41 |
| 9| 7016 | 97.52 | 32.88 | 1.48 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 1 | 57 | 5868 | 20.78 | 7.06 | 0.63 |
| 10 | 5 | 284 | 6003 | 28.46 | 10.13 | 0.72 |
| 10 | 10 | 570 | 6174 | 39.06 | 14.30 | 0.84 |
| 10 | 20 | 1139 | 6514 | 60.61 | 22.74 | 1.09 |
| 10 | 30 | 1706 | 6852 | 80.48 | 30.61 | 1.32 |
| 10 | 39 | 2218 | 7158 | 98.49 | 37.73 | 1.53 |

