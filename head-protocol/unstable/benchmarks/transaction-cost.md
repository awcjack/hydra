--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-28 05:22:08.908961029 UTC |
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
| 1| 5836 | 10.40 | 3.30 | 0.51 |
| 2| 6038 | 12.61 | 4.00 | 0.55 |
| 3| 6239 | 15.14 | 4.81 | 0.58 |
| 5| 6646 | 18.64 | 5.88 | 0.64 |
| 10| 7647 | 29.02 | 9.14 | 0.79 |
| 43| 14285 | 98.76 | 30.86 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 741 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1280 | 6.41 | 3.60 | 0.28 |
| 10| 2173 | 12.13 | 7.25 | 0.40 |
| 54| 10053 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.42 | 7.12 | 0.42 |
| 2 | 113 | 636 | 33.17 | 9.59 | 0.52 |
| 3 | 171 | 747 | 43.56 | 12.48 | 0.63 |
| 4 | 226 | 858 | 51.10 | 14.68 | 0.71 |
| 5 | 284 | 969 | 61.61 | 17.66 | 0.82 |
| 6 | 341 | 1081 | 68.33 | 19.64 | 0.89 |
| 7 | 394 | 1192 | 78.72 | 22.52 | 1.00 |
| 8 | 450 | 1303 | 87.20 | 24.85 | 1.09 |
| 9 | 504 | 1414 | 98.38 | 28.03 | 1.21 |
| 10 | 561 | 1525 | 99.25 | 28.63 | 1.23 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1788 | 24.00 | 7.62 | 0.48 |
| 2| 1992 | 26.62 | 9.02 | 0.52 |
| 3| 2011 | 26.32 | 9.58 | 0.52 |
| 5| 2385 | 31.45 | 12.35 | 0.60 |
| 10| 3015 | 39.04 | 17.80 | 0.73 |
| 39| 7502 | 98.57 | 53.67 | 1.66 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 616 | 22.57 | 7.32 | 0.41 |
| 2| 735 | 24.27 | 8.45 | 0.44 |
| 3| 871 | 25.09 | 9.31 | 0.46 |
| 5| 1255 | 31.14 | 12.36 | 0.55 |
| 10| 2123 | 43.15 | 19.05 | 0.73 |
| 42| 6585 | 96.29 | 55.14 | 1.62 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 704 | 27.50 | 8.46 | 0.46 |
| 2| 770 | 28.47 | 9.38 | 0.48 |
| 3| 940 | 32.76 | 11.24 | 0.54 |
| 5| 1279 | 37.77 | 14.00 | 0.61 |
| 10| 1974 | 44.22 | 19.16 | 0.73 |
| 36| 5891 | 95.94 | 51.00 | 1.55 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 675 | 33.87 | 10.16 | 0.53 |
| 2| 760 | 35.21 | 11.18 | 0.55 |
| 3| 896 | 37.16 | 12.39 | 0.58 |
| 5| 1314 | 43.35 | 15.49 | 0.67 |
| 10| 2085 | 54.55 | 21.97 | 0.84 |
| 30| 4833 | 97.78 | 47.27 | 1.49 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5697 | 22.93 | 7.56 | 0.64 |
| 2| 6016 | 36.76 | 12.40 | 0.80 |
| 3| 6108 | 44.87 | 15.07 | 0.89 |
| 4| 6096 | 49.36 | 16.51 | 0.94 |
| 5| 6407 | 63.68 | 21.40 | 1.10 |
| 6| 6677 | 75.34 | 25.47 | 1.24 |
| 7| 6721 | 80.10 | 26.93 | 1.29 |
| 8| 7062 | 94.73 | 32.04 | 1.46 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 19.19 | 6.41 | 0.61 |
| 10 | 1 | 57 | 5868 | 21.85 | 7.43 | 0.64 |
| 10 | 20 | 1138 | 6513 | 60.42 | 22.68 | 1.09 |
| 10 | 40 | 2271 | 7188 | 99.66 | 38.24 | 1.55 |

