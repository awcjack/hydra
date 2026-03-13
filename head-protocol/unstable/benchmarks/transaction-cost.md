--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2026-03-13 04:33:49.417621884 UTC |
| _Max. memory units_ | 14000000 |
| _Max. CPU units_ | 10000000000 |
| _Max. tx size (kB)_ | 16384 |

## Script summary

| Name   | Hash | Size (Bytes) 
| :----- | :--- | -----------: 
| νInitial | c8a101a5c8ac4816b0dceb59ce31fc2258e387de828f02961d2f2045 | 2652 | 
| νCommit | 61458bc2f297fff3cc5df6ac7ab57cefd87763b0b7bd722146a1035c | 685 | 
| νHead | 5788da8969b01bb1d9fd7b78b0dcd988ef2b1d4519e0deae656cef53 | 12374 | 
| μHead | d81fa4e721cac05546c901514e27fad626a1f6a8e11b4d6113d85dee* | 5284 | 
| νDeposit | ae01dade3a9c346d5c93ae3ce339412b90a0b8f83f94ec6baa24e30c | 1102 | 

* The minting policy hash is only usable for comparison. As the script is parameterized, the actual script is unique per head.

## `Init` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5837 | 10.61 | 3.37 | 0.52 |
| 2| 6037 | 12.44 | 3.94 | 0.54 |
| 3| 6238 | 14.72 | 4.66 | 0.58 |
| 5| 6640 | 18.41 | 5.80 | 0.63 |
| 10| 7644 | 28.94 | 9.11 | 0.79 |
| 43| 14279 | 98.99 | 30.94 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 739 | 3.38 | 1.73 | 0.22 |
| 3| 922 | 4.36 | 2.33 | 0.24 |
| 5| 1284 | 6.41 | 3.60 | 0.28 |
| 10| 2171 | 12.13 | 7.25 | 0.40 |
| 54| 10067 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 18.67 | 5.84 | 0.37 |
| 2 | 114 | 636 | 24.11 | 7.55 | 0.43 |
| 3 | 171 | 747 | 31.33 | 9.71 | 0.51 |
| 4 | 228 | 858 | 37.52 | 11.63 | 0.58 |
| 5 | 283 | 974 | 43.75 | 13.65 | 0.64 |
| 6 | 339 | 1081 | 54.45 | 16.65 | 0.76 |
| 7 | 394 | 1192 | 56.58 | 17.65 | 0.79 |
| 8 | 449 | 1303 | 68.57 | 20.99 | 0.91 |
| 9 | 506 | 1414 | 83.05 | 25.10 | 1.06 |
| 10 | 560 | 1525 | 90.28 | 27.39 | 1.14 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1804 | 18.10 | 6.30 | 0.42 |
| 2| 1882 | 18.43 | 7.06 | 0.43 |
| 3| 2123 | 20.94 | 8.49 | 0.47 |
| 5| 2462 | 23.90 | 10.71 | 0.53 |
| 10| 3103 | 29.16 | 15.63 | 0.64 |
| 50| 9083 | 86.31 | 59.28 | 1.67 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 623 | 16.81 | 6.04 | 0.36 |
| 2| 699 | 16.74 | 6.64 | 0.36 |
| 3| 899 | 18.95 | 8.00 | 0.40 |
| 5| 1263 | 22.65 | 10.44 | 0.46 |
| 10| 2029 | 30.48 | 16.11 | 0.60 |
| 50| 8010 | 85.88 | 59.22 | 1.62 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 663 | 21.91 | 7.28 | 0.41 |
| 2| 835 | 22.04 | 8.00 | 0.42 |
| 3| 910 | 24.61 | 9.41 | 0.46 |
| 5| 1345 | 26.95 | 11.49 | 0.51 |
| 10| 1974 | 33.51 | 16.76 | 0.63 |
| 49| 8040 | 95.89 | 61.37 | 1.72 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 667 | 25.34 | 8.25 | 0.44 |
| 2| 764 | 26.36 | 9.20 | 0.46 |
| 3| 960 | 28.37 | 10.47 | 0.50 |
| 5| 1338 | 33.36 | 13.33 | 0.57 |
| 10| 1896 | 39.71 | 18.48 | 0.69 |
| 41| 6977 | 98.29 | 56.48 | 1.66 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5812 | 23.77 | 8.34 | 0.66 |
| 2| 5893 | 30.31 | 10.64 | 0.73 |
| 3| 6116 | 39.82 | 14.08 | 0.84 |
| 4| 6225 | 47.66 | 16.85 | 0.93 |
| 5| 6385 | 54.78 | 19.44 | 1.01 |
| 6| 6577 | 63.85 | 22.71 | 1.12 |
| 7| 6724 | 70.94 | 25.20 | 1.20 |
| 8| 6812 | 81.15 | 28.52 | 1.31 |
| 9| 7093 | 96.68 | 33.85 | 1.49 |
| 10| 7291 | 94.52 | 33.79 | 1.48 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 1 | 57 | 5869 | 19.05 | 6.73 | 0.61 |
| 10 | 5 | 284 | 6003 | 25.03 | 9.31 | 0.68 |
| 10 | 10 | 569 | 6173 | 36.12 | 13.80 | 0.81 |
| 10 | 20 | 1140 | 6514 | 53.51 | 21.08 | 1.02 |
| 10 | 30 | 1709 | 6856 | 71.33 | 28.51 | 1.23 |
| 10 | 40 | 2276 | 7192 | 90.57 | 36.43 | 1.46 |
| 10 | 44 | 2502 | 7326 | 97.28 | 39.26 | 1.54 |

