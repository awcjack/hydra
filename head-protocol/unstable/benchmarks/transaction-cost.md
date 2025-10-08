--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-08 04:36:10.003492796 UTC |
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
| 1| 5837 | 10.17 | 3.22 | 0.51 |
| 2| 6037 | 12.25 | 3.87 | 0.54 |
| 3| 6238 | 14.31 | 4.52 | 0.57 |
| 5| 6645 | 18.50 | 5.83 | 0.63 |
| 10| 7647 | 29.12 | 9.18 | 0.79 |
| 43| 14279 | 98.76 | 30.86 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 558 | 2.44 | 1.16 | 0.20 |
| 2| 740 | 3.38 | 1.73 | 0.22 |
| 3| 923 | 4.36 | 2.33 | 0.24 |
| 5| 1273 | 6.41 | 3.60 | 0.28 |
| 10| 2177 | 12.13 | 7.25 | 0.40 |
| 54| 10049 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 640 | 33.25 | 9.62 | 0.52 |
| 3 | 171 | 747 | 42.62 | 12.25 | 0.62 |
| 4 | 226 | 858 | 48.13 | 13.97 | 0.68 |
| 5 | 283 | 969 | 57.21 | 16.53 | 0.77 |
| 6 | 339 | 1085 | 63.65 | 18.43 | 0.85 |
| 7 | 394 | 1192 | 75.10 | 21.78 | 0.97 |
| 8 | 449 | 1303 | 85.04 | 24.38 | 1.07 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1793 | 24.00 | 7.62 | 0.48 |
| 2| 1922 | 25.55 | 8.71 | 0.50 |
| 3| 2013 | 26.28 | 9.57 | 0.52 |
| 5| 2438 | 32.44 | 12.63 | 0.61 |
| 10| 3105 | 39.72 | 18.00 | 0.74 |
| 40| 7871 | 99.63 | 54.72 | 1.70 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 625 | 22.80 | 7.38 | 0.42 |
| 2| 764 | 23.59 | 8.23 | 0.43 |
| 3| 941 | 26.16 | 9.62 | 0.47 |
| 5| 1218 | 29.90 | 12.02 | 0.53 |
| 10| 1988 | 39.38 | 18.00 | 0.69 |
| 43| 6723 | 97.96 | 56.28 | 1.64 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 703 | 27.47 | 8.46 | 0.46 |
| 2| 820 | 31.61 | 10.27 | 0.52 |
| 3| 989 | 33.43 | 11.44 | 0.55 |
| 5| 1315 | 35.72 | 13.46 | 0.59 |
| 10| 2036 | 44.90 | 19.37 | 0.74 |
| 36| 5998 | 98.52 | 51.81 | 1.58 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 674 | 33.83 | 10.16 | 0.53 |
| 2| 818 | 35.89 | 11.39 | 0.56 |
| 3| 985 | 38.62 | 12.83 | 0.60 |
| 5| 1262 | 42.64 | 15.28 | 0.66 |
| 10| 2130 | 54.61 | 21.98 | 0.84 |
| 28| 4580 | 93.68 | 44.76 | 1.43 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5814 | 27.09 | 9.09 | 0.69 |
| 2| 5845 | 31.48 | 10.47 | 0.74 |
| 3| 6016 | 41.41 | 13.87 | 0.85 |
| 4| 6187 | 53.94 | 18.13 | 0.99 |
| 5| 6454 | 62.40 | 21.06 | 1.09 |
| 6| 6647 | 73.66 | 24.83 | 1.22 |
| 7| 6761 | 82.01 | 27.68 | 1.31 |
| 8| 6750 | 83.99 | 28.17 | 1.33 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 18.30 | 6.11 | 0.60 |
| 10 | 10 | 569 | 6173 | 39.06 | 14.30 | 0.84 |
| 10 | 20 | 1139 | 6514 | 60.42 | 22.68 | 1.09 |
| 10 | 39 | 2222 | 7161 | 98.05 | 37.58 | 1.53 |

