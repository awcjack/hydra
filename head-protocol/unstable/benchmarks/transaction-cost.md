--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-26 05:19:44.628088221 UTC |
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
| 1| 5836 | 10.38 | 3.29 | 0.51 |
| 2| 6037 | 12.41 | 3.92 | 0.54 |
| 3| 6238 | 14.76 | 4.67 | 0.58 |
| 5| 6645 | 18.62 | 5.87 | 0.64 |
| 10| 7646 | 29.12 | 9.18 | 0.79 |
| 43| 14281 | 98.97 | 30.93 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 741 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1276 | 6.41 | 3.60 | 0.28 |
| 10| 2174 | 12.13 | 7.25 | 0.40 |
| 54| 10051 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.46 | 7.13 | 0.42 |
| 2 | 113 | 636 | 33.18 | 9.60 | 0.52 |
| 3 | 169 | 747 | 41.01 | 11.85 | 0.60 |
| 4 | 226 | 858 | 49.43 | 14.26 | 0.69 |
| 5 | 282 | 969 | 62.45 | 17.76 | 0.83 |
| 6 | 340 | 1085 | 66.31 | 19.11 | 0.87 |
| 7 | 395 | 1192 | 83.47 | 23.56 | 1.05 |
| 8 | 450 | 1303 | 98.63 | 27.64 | 1.20 |
| 10 | 560 | 1525 | 96.82 | 28.06 | 1.20 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1798 | 24.37 | 7.71 | 0.48 |
| 2| 1883 | 24.80 | 8.49 | 0.49 |
| 3| 2011 | 26.24 | 9.56 | 0.52 |
| 5| 2437 | 32.17 | 12.56 | 0.61 |
| 10| 3109 | 40.64 | 18.26 | 0.75 |
| 40| 7699 | 99.15 | 54.52 | 1.68 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 631 | 22.50 | 7.29 | 0.41 |
| 2| 770 | 23.63 | 8.24 | 0.43 |
| 3| 969 | 26.61 | 9.77 | 0.48 |
| 5| 1174 | 28.49 | 11.60 | 0.52 |
| 10| 1929 | 39.22 | 17.97 | 0.68 |
| 40| 6553 | 99.75 | 54.75 | 1.64 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 645 | 29.13 | 8.90 | 0.48 |
| 2| 805 | 30.91 | 10.06 | 0.51 |
| 3| 912 | 32.68 | 11.22 | 0.54 |
| 5| 1168 | 33.62 | 12.82 | 0.57 |
| 10| 2044 | 48.12 | 20.25 | 0.77 |
| 35| 5789 | 99.39 | 51.25 | 1.58 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 675 | 33.79 | 10.15 | 0.53 |
| 2| 878 | 36.48 | 11.58 | 0.57 |
| 3| 1009 | 38.55 | 12.81 | 0.60 |
| 5| 1369 | 43.24 | 15.46 | 0.67 |
| 10| 2111 | 54.85 | 22.04 | 0.85 |
| 29| 4893 | 97.73 | 46.62 | 1.49 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5830 | 26.96 | 9.06 | 0.69 |
| 2| 5894 | 34.79 | 11.64 | 0.77 |
| 3| 6132 | 45.73 | 15.40 | 0.90 |
| 4| 6293 | 54.63 | 18.40 | 1.00 |
| 5| 6324 | 62.86 | 21.12 | 1.09 |
| 6| 6694 | 76.53 | 25.84 | 1.25 |
| 7| 6696 | 83.05 | 27.94 | 1.32 |
| 8| 6855 | 92.93 | 31.24 | 1.43 |
| 9| 6815 | 93.87 | 31.50 | 1.44 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 1 | 57 | 5868 | 20.78 | 7.06 | 0.63 |
| 10 | 10 | 569 | 6174 | 39.51 | 14.45 | 0.85 |
| 10 | 39 | 2220 | 7159 | 97.61 | 37.43 | 1.52 |

