--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-12 04:27:43.69301971 UTC |
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
| 1| 5837 | 10.19 | 3.22 | 0.51 |
| 2| 6035 | 13.08 | 4.16 | 0.55 |
| 3| 6238 | 14.31 | 4.52 | 0.57 |
| 5| 6640 | 18.98 | 6.00 | 0.64 |
| 10| 7644 | 28.92 | 9.11 | 0.79 |
| 43| 14282 | 98.56 | 30.79 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 739 | 3.38 | 1.73 | 0.22 |
| 3| 921 | 4.36 | 2.33 | 0.24 |
| 5| 1279 | 6.41 | 3.60 | 0.28 |
| 10| 2175 | 12.13 | 7.25 | 0.40 |
| 54| 10074 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.42 | 7.12 | 0.42 |
| 2 | 113 | 636 | 34.23 | 9.85 | 0.53 |
| 3 | 170 | 747 | 42.68 | 12.30 | 0.62 |
| 4 | 227 | 858 | 48.07 | 13.96 | 0.68 |
| 5 | 282 | 969 | 59.11 | 16.99 | 0.79 |
| 6 | 340 | 1081 | 64.33 | 18.67 | 0.85 |
| 7 | 395 | 1192 | 83.00 | 23.59 | 1.04 |
| 8 | 448 | 1303 | 93.57 | 26.47 | 1.15 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1822 | 24.37 | 7.71 | 0.48 |
| 2| 1987 | 26.92 | 9.09 | 0.52 |
| 3| 2053 | 26.86 | 9.75 | 0.53 |
| 5| 2464 | 32.57 | 12.66 | 0.61 |
| 10| 3062 | 39.66 | 17.99 | 0.74 |
| 39| 7608 | 98.40 | 53.67 | 1.67 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 632 | 22.81 | 7.37 | 0.42 |
| 2| 695 | 22.58 | 7.96 | 0.42 |
| 3| 853 | 24.03 | 9.02 | 0.45 |
| 5| 1090 | 27.15 | 11.22 | 0.50 |
| 10| 2052 | 42.29 | 18.79 | 0.72 |
| 39| 6287 | 94.83 | 52.75 | 1.57 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 647 | 29.17 | 8.91 | 0.48 |
| 2| 839 | 29.19 | 9.60 | 0.49 |
| 3| 940 | 30.90 | 10.74 | 0.52 |
| 5| 1206 | 34.22 | 13.00 | 0.57 |
| 10| 1948 | 46.80 | 19.85 | 0.76 |
| 35| 5767 | 94.04 | 49.83 | 1.52 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 679 | 33.83 | 10.15 | 0.53 |
| 2| 811 | 35.89 | 11.39 | 0.56 |
| 3| 937 | 37.91 | 12.62 | 0.59 |
| 5| 1348 | 43.28 | 15.48 | 0.67 |
| 10| 2017 | 53.45 | 21.62 | 0.83 |
| 29| 4954 | 98.69 | 46.92 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5815 | 26.92 | 9.04 | 0.69 |
| 2| 5977 | 36.92 | 12.43 | 0.80 |
| 3| 6110 | 44.71 | 15.07 | 0.89 |
| 4| 6183 | 51.30 | 17.25 | 0.96 |
| 5| 6478 | 65.21 | 22.02 | 1.12 |
| 6| 6495 | 69.66 | 23.43 | 1.17 |
| 7| 6714 | 84.16 | 28.35 | 1.33 |
| 8| 6889 | 92.71 | 31.22 | 1.43 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5835 | 19.19 | 6.41 | 0.61 |
| 10 | 1 | 57 | 5868 | 21.66 | 7.37 | 0.64 |
| 10 | 5 | 283 | 6003 | 28.90 | 10.28 | 0.72 |
| 10 | 10 | 570 | 6175 | 37.29 | 13.69 | 0.82 |
| 10 | 20 | 1139 | 6513 | 60.42 | 22.68 | 1.09 |
| 10 | 30 | 1708 | 6855 | 80.48 | 30.61 | 1.32 |
| 10 | 39 | 2220 | 7159 | 98.24 | 37.65 | 1.53 |

