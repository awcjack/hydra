--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-29 05:23:14.824259673 UTC |
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
| 2| 6038 | 12.23 | 3.86 | 0.54 |
| 3| 6242 | 14.72 | 4.66 | 0.58 |
| 5| 6640 | 18.52 | 5.84 | 0.63 |
| 10| 7646 | 29.12 | 9.18 | 0.79 |
| 43| 14279 | 98.73 | 30.85 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 919 | 4.36 | 2.33 | 0.24 |
| 5| 1283 | 6.41 | 3.60 | 0.28 |
| 10| 2178 | 12.13 | 7.25 | 0.40 |
| 54| 10068 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 640 | 34.19 | 9.84 | 0.53 |
| 3 | 171 | 747 | 40.11 | 11.68 | 0.59 |
| 4 | 227 | 858 | 49.56 | 14.31 | 0.69 |
| 5 | 283 | 974 | 62.19 | 17.73 | 0.82 |
| 6 | 339 | 1081 | 66.09 | 19.02 | 0.87 |
| 7 | 392 | 1192 | 82.48 | 23.38 | 1.04 |
| 8 | 449 | 1303 | 83.22 | 24.00 | 1.05 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1801 | 24.00 | 7.62 | 0.48 |
| 2| 1956 | 27.00 | 9.10 | 0.52 |
| 3| 2053 | 27.27 | 9.85 | 0.53 |
| 5| 2329 | 30.29 | 12.03 | 0.58 |
| 10| 3081 | 39.85 | 18.03 | 0.74 |
| 40| 7622 | 99.32 | 54.60 | 1.68 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 630 | 22.53 | 7.31 | 0.41 |
| 2| 751 | 23.66 | 8.26 | 0.43 |
| 3| 956 | 26.53 | 9.75 | 0.48 |
| 5| 1156 | 28.03 | 11.47 | 0.51 |
| 10| 1904 | 37.61 | 17.49 | 0.66 |
| 40| 6290 | 95.13 | 53.46 | 1.58 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 666 | 29.13 | 8.90 | 0.48 |
| 2| 775 | 30.98 | 10.08 | 0.51 |
| 3| 872 | 32.01 | 11.01 | 0.53 |
| 5| 1304 | 35.76 | 13.47 | 0.59 |
| 10| 2021 | 47.44 | 20.04 | 0.77 |
| 37| 5853 | 95.65 | 51.54 | 1.55 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 694 | 33.83 | 10.16 | 0.53 |
| 2| 764 | 35.14 | 11.16 | 0.55 |
| 3| 993 | 38.59 | 12.82 | 0.60 |
| 5| 1282 | 42.72 | 15.30 | 0.66 |
| 10| 2063 | 54.92 | 22.06 | 0.84 |
| 29| 4831 | 98.18 | 46.73 | 1.49 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5813 | 27.00 | 9.08 | 0.69 |
| 2| 5965 | 35.96 | 12.07 | 0.79 |
| 3| 6084 | 44.72 | 15.08 | 0.89 |
| 4| 6205 | 53.37 | 17.99 | 0.98 |
| 5| 6362 | 63.18 | 21.20 | 1.09 |
| 6| 6549 | 72.89 | 24.51 | 1.20 |
| 7| 6753 | 83.75 | 28.17 | 1.33 |
| 8| 6860 | 92.59 | 31.32 | 1.43 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 1 | 57 | 5868 | 21.22 | 7.21 | 0.63 |
| 10 | 5 | 284 | 6003 | 28.02 | 9.98 | 0.71 |
| 10 | 10 | 569 | 6173 | 38.18 | 14.00 | 0.83 |
| 10 | 20 | 1138 | 6513 | 60.87 | 22.83 | 1.09 |
| 10 | 30 | 1709 | 6855 | 80.04 | 30.46 | 1.32 |
| 10 | 40 | 2278 | 7194 | 99.66 | 38.24 | 1.55 |
| 10 | 40 | 2275 | 7191 | 99.66 | 38.24 | 1.55 |

