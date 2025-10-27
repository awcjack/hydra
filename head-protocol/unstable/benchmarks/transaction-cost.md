--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-27 05:21:11.310525301 UTC |
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
| 1| 5841 | 10.28 | 3.25 | 0.51 |
| 2| 6038 | 12.23 | 3.86 | 0.54 |
| 3| 6238 | 14.50 | 4.58 | 0.57 |
| 5| 6640 | 18.71 | 5.91 | 0.64 |
| 10| 7647 | 28.92 | 9.11 | 0.79 |
| 43| 14279 | 98.73 | 30.85 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 740 | 3.38 | 1.73 | 0.22 |
| 3| 922 | 4.36 | 2.33 | 0.24 |
| 5| 1279 | 6.41 | 3.60 | 0.28 |
| 10| 2179 | 12.13 | 7.25 | 0.40 |
| 54| 10063 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 33.32 | 9.66 | 0.52 |
| 3 | 169 | 751 | 42.57 | 12.25 | 0.62 |
| 4 | 226 | 858 | 52.41 | 15.00 | 0.72 |
| 5 | 282 | 969 | 62.34 | 17.73 | 0.82 |
| 6 | 338 | 1081 | 71.81 | 20.50 | 0.93 |
| 7 | 395 | 1192 | 80.17 | 22.78 | 1.01 |
| 8 | 449 | 1307 | 82.73 | 23.88 | 1.05 |
| 9 | 504 | 1414 | 91.64 | 26.41 | 1.14 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1785 | 24.00 | 7.62 | 0.48 |
| 2| 2000 | 26.55 | 9.00 | 0.52 |
| 3| 2138 | 28.32 | 10.17 | 0.55 |
| 5| 2405 | 31.49 | 12.36 | 0.60 |
| 10| 3168 | 42.24 | 18.69 | 0.77 |
| 39| 7659 | 99.66 | 54.02 | 1.68 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 604 | 22.84 | 7.39 | 0.41 |
| 2| 764 | 23.55 | 8.22 | 0.43 |
| 3| 830 | 24.02 | 9.03 | 0.45 |
| 5| 1132 | 28.14 | 11.50 | 0.51 |
| 10| 2023 | 39.67 | 18.08 | 0.69 |
| 43| 6618 | 95.74 | 55.66 | 1.62 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 686 | 27.54 | 8.47 | 0.46 |
| 2| 830 | 29.18 | 9.60 | 0.49 |
| 3| 868 | 32.08 | 11.03 | 0.53 |
| 5| 1335 | 35.83 | 13.49 | 0.60 |
| 10| 2009 | 44.83 | 19.35 | 0.74 |
| 34| 5673 | 99.08 | 50.48 | 1.56 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 670 | 33.83 | 10.15 | 0.53 |
| 2| 765 | 35.17 | 11.17 | 0.55 |
| 3| 944 | 37.95 | 12.63 | 0.59 |
| 5| 1229 | 41.90 | 15.05 | 0.65 |
| 10| 2037 | 54.55 | 21.97 | 0.84 |
| 29| 4987 | 99.02 | 47.02 | 1.51 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5779 | 27.13 | 9.09 | 0.69 |
| 2| 6008 | 37.11 | 12.51 | 0.80 |
| 3| 6033 | 42.57 | 14.29 | 0.86 |
| 4| 6279 | 52.38 | 17.64 | 0.98 |
| 5| 6379 | 59.71 | 20.08 | 1.06 |
| 6| 6580 | 74.51 | 25.18 | 1.22 |
| 7| 6830 | 83.33 | 28.15 | 1.33 |
| 8| 6713 | 87.17 | 29.24 | 1.36 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 17.86 | 5.96 | 0.59 |
| 10 | 1 | 57 | 5868 | 21.66 | 7.37 | 0.64 |
| 10 | 10 | 567 | 6171 | 39.25 | 14.36 | 0.84 |
| 10 | 20 | 1139 | 6513 | 60.17 | 22.59 | 1.09 |
| 10 | 30 | 1708 | 6854 | 80.92 | 30.76 | 1.33 |
| 10 | 39 | 2219 | 7158 | 98.93 | 37.88 | 1.54 |

