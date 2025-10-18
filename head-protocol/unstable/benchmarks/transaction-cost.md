--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-18 04:26:48.619425005 UTC |
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
| 1| 5837 | 10.78 | 3.43 | 0.52 |
| 2| 6037 | 12.91 | 4.10 | 0.55 |
| 3| 6238 | 14.88 | 4.72 | 0.58 |
| 5| 6641 | 18.50 | 5.83 | 0.63 |
| 10| 7646 | 29.14 | 9.19 | 0.79 |
| 43| 14283 | 98.87 | 30.90 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 739 | 3.38 | 1.73 | 0.22 |
| 3| 912 | 4.36 | 2.33 | 0.24 |
| 5| 1280 | 6.41 | 3.60 | 0.28 |
| 10| 2179 | 12.13 | 7.25 | 0.40 |
| 54| 10059 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.24 | 7.32 | 0.43 |
| 2 | 113 | 636 | 34.38 | 9.91 | 0.53 |
| 3 | 168 | 747 | 40.18 | 11.66 | 0.59 |
| 4 | 227 | 862 | 52.47 | 15.01 | 0.72 |
| 5 | 283 | 969 | 62.51 | 17.80 | 0.83 |
| 6 | 340 | 1081 | 66.17 | 19.08 | 0.87 |
| 7 | 395 | 1192 | 84.26 | 23.80 | 1.06 |
| 8 | 450 | 1303 | 96.74 | 27.29 | 1.19 |
| 9 | 505 | 1418 | 90.36 | 26.04 | 1.13 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1792 | 23.92 | 7.60 | 0.48 |
| 2| 1934 | 25.80 | 8.77 | 0.51 |
| 3| 2126 | 28.39 | 10.16 | 0.55 |
| 5| 2468 | 31.91 | 12.50 | 0.61 |
| 10| 3061 | 38.63 | 17.70 | 0.72 |
| 41| 7691 | 97.19 | 54.67 | 1.67 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 606 | 22.84 | 7.37 | 0.41 |
| 2| 803 | 25.47 | 8.79 | 0.45 |
| 3| 898 | 25.49 | 9.46 | 0.46 |
| 5| 1140 | 28.18 | 11.52 | 0.51 |
| 10| 1918 | 39.57 | 18.05 | 0.68 |
| 42| 6740 | 97.03 | 55.36 | 1.63 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 700 | 27.54 | 8.47 | 0.46 |
| 2| 770 | 30.98 | 10.08 | 0.51 |
| 3| 945 | 30.94 | 10.75 | 0.52 |
| 5| 1206 | 34.26 | 13.01 | 0.57 |
| 10| 2029 | 44.82 | 19.35 | 0.74 |
| 35| 5534 | 91.20 | 48.95 | 1.48 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 685 | 33.83 | 10.15 | 0.53 |
| 2| 765 | 35.17 | 11.17 | 0.55 |
| 3| 945 | 37.95 | 12.63 | 0.59 |
| 5| 1375 | 43.99 | 15.69 | 0.68 |
| 10| 1966 | 53.83 | 21.73 | 0.83 |
| 29| 4959 | 98.85 | 46.97 | 1.51 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5697 | 22.97 | 7.58 | 0.64 |
| 2| 5983 | 37.21 | 12.53 | 0.80 |
| 3| 6078 | 44.64 | 15.02 | 0.89 |
| 4| 6262 | 55.01 | 18.51 | 1.00 |
| 5| 6328 | 60.14 | 20.21 | 1.06 |
| 6| 6499 | 70.52 | 23.71 | 1.18 |
| 7| 6706 | 80.03 | 26.88 | 1.29 |
| 8| 7010 | 91.93 | 31.10 | 1.43 |
| 9| 6907 | 94.97 | 31.96 | 1.45 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.19 | 6.41 | 0.61 |
| 10 | 1 | 57 | 5869 | 21.41 | 7.28 | 0.63 |
| 10 | 5 | 284 | 6003 | 29.09 | 10.34 | 0.72 |
| 10 | 10 | 570 | 6175 | 37.74 | 13.85 | 0.83 |
| 10 | 20 | 1138 | 6512 | 60.87 | 22.83 | 1.09 |
| 10 | 30 | 1708 | 6855 | 79.60 | 30.31 | 1.31 |
| 10 | 38 | 2162 | 7124 | 96.00 | 36.77 | 1.50 |

