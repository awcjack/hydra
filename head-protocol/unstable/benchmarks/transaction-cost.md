--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-15 04:26:42.89836484 UTC |
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
| 1| 5837 | 10.38 | 3.29 | 0.51 |
| 2| 6035 | 12.99 | 4.13 | 0.55 |
| 3| 6238 | 14.31 | 4.52 | 0.57 |
| 5| 6641 | 18.84 | 5.95 | 0.64 |
| 10| 7647 | 29.14 | 9.19 | 0.79 |
| 43| 14283 | 99.33 | 31.06 | 1.81 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 558 | 2.44 | 1.16 | 0.20 |
| 2| 744 | 3.38 | 1.73 | 0.22 |
| 3| 919 | 4.36 | 2.33 | 0.24 |
| 5| 1277 | 6.41 | 3.60 | 0.28 |
| 10| 2177 | 12.13 | 7.25 | 0.40 |
| 54| 10058 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 113 | 636 | 32.24 | 9.37 | 0.51 |
| 3 | 171 | 747 | 40.18 | 11.66 | 0.59 |
| 4 | 224 | 858 | 51.16 | 14.72 | 0.71 |
| 5 | 282 | 969 | 59.58 | 17.17 | 0.80 |
| 6 | 337 | 1081 | 67.66 | 19.39 | 0.88 |
| 7 | 397 | 1192 | 85.11 | 24.09 | 1.06 |
| 8 | 449 | 1303 | 86.70 | 24.78 | 1.09 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1809 | 24.37 | 7.71 | 0.48 |
| 2| 1882 | 24.47 | 8.41 | 0.49 |
| 3| 2061 | 27.03 | 9.79 | 0.53 |
| 5| 2368 | 31.52 | 12.37 | 0.60 |
| 10| 3278 | 43.01 | 18.94 | 0.78 |
| 41| 7743 | 98.90 | 55.16 | 1.69 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 616 | 22.84 | 7.38 | 0.42 |
| 2| 841 | 25.44 | 8.77 | 0.46 |
| 3| 889 | 25.82 | 9.55 | 0.47 |
| 5| 1278 | 30.89 | 12.30 | 0.54 |
| 10| 1971 | 38.70 | 17.79 | 0.68 |
| 40| 6411 | 95.96 | 53.71 | 1.59 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 647 | 29.13 | 8.90 | 0.48 |
| 2| 770 | 28.47 | 9.38 | 0.48 |
| 3| 902 | 30.23 | 10.54 | 0.51 |
| 5| 1280 | 37.62 | 13.96 | 0.61 |
| 10| 2014 | 47.59 | 20.10 | 0.77 |
| 36| 6101 | 99.78 | 52.14 | 1.60 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 673 | 33.87 | 10.16 | 0.53 |
| 2| 764 | 35.14 | 11.16 | 0.55 |
| 3| 1019 | 38.66 | 12.84 | 0.60 |
| 5| 1264 | 42.90 | 15.36 | 0.66 |
| 10| 2095 | 54.69 | 22.00 | 0.84 |
| 29| 4915 | 97.73 | 46.66 | 1.49 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5697 | 22.93 | 7.56 | 0.64 |
| 2| 5874 | 32.54 | 10.86 | 0.75 |
| 3| 6103 | 44.87 | 15.06 | 0.89 |
| 4| 6066 | 47.03 | 15.70 | 0.91 |
| 5| 6454 | 65.96 | 22.26 | 1.13 |
| 6| 6451 | 69.44 | 23.26 | 1.16 |
| 7| 6701 | 80.89 | 27.31 | 1.30 |
| 8| 6797 | 88.22 | 29.67 | 1.38 |
| 9| 6955 | 96.49 | 32.54 | 1.47 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 18.68 | 6.24 | 0.60 |
| 10 | 1 | 57 | 5868 | 20.78 | 7.06 | 0.63 |
| 10 | 5 | 285 | 6004 | 28.46 | 10.13 | 0.72 |
| 10 | 10 | 569 | 6173 | 40.39 | 14.75 | 0.85 |
| 10 | 20 | 1140 | 6515 | 59.10 | 22.22 | 1.07 |
| 10 | 30 | 1706 | 6852 | 81.37 | 30.91 | 1.33 |
| 10 | 39 | 2218 | 7157 | 98.05 | 37.58 | 1.53 |

