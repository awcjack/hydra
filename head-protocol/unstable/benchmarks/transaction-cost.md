--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2026-03-03 05:29:09.836711826 UTC |
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
| 1| 5834 | 10.19 | 3.22 | 0.51 |
| 2| 6037 | 12.78 | 4.06 | 0.55 |
| 3| 6242 | 14.98 | 4.75 | 0.58 |
| 5| 6638 | 19.27 | 6.11 | 0.64 |
| 10| 7648 | 28.80 | 9.07 | 0.78 |
| 43| 14281 | 99.02 | 30.95 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 742 | 3.38 | 1.73 | 0.22 |
| 3| 922 | 4.36 | 2.33 | 0.24 |
| 5| 1283 | 6.41 | 3.60 | 0.28 |
| 10| 2168 | 12.13 | 7.25 | 0.40 |
| 54| 10076 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 18.25 | 5.74 | 0.36 |
| 2 | 114 | 636 | 25.20 | 7.82 | 0.44 |
| 3 | 170 | 747 | 30.91 | 9.64 | 0.50 |
| 4 | 226 | 858 | 37.62 | 11.66 | 0.58 |
| 5 | 281 | 969 | 45.89 | 14.13 | 0.67 |
| 6 | 338 | 1085 | 53.30 | 16.35 | 0.75 |
| 7 | 393 | 1192 | 63.13 | 19.14 | 0.85 |
| 8 | 449 | 1303 | 66.03 | 20.26 | 0.89 |
| 9 | 504 | 1418 | 71.39 | 21.99 | 0.95 |
| 10 | 561 | 1525 | 92.12 | 27.66 | 1.16 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1783 | 17.89 | 6.25 | 0.42 |
| 2| 1944 | 18.98 | 7.24 | 0.44 |
| 3| 2108 | 20.83 | 8.46 | 0.47 |
| 5| 2400 | 23.22 | 10.50 | 0.52 |
| 10| 3201 | 30.09 | 15.90 | 0.65 |
| 50| 9245 | 88.65 | 59.95 | 1.71 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 623 | 16.79 | 6.02 | 0.36 |
| 2| 754 | 17.90 | 7.02 | 0.38 |
| 3| 1004 | 20.63 | 8.50 | 0.42 |
| 5| 1134 | 20.73 | 9.84 | 0.44 |
| 10| 1924 | 27.83 | 15.29 | 0.57 |
| 50| 7946 | 86.53 | 59.37 | 1.63 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 655 | 21.93 | 7.28 | 0.41 |
| 2| 811 | 22.02 | 8.00 | 0.42 |
| 3| 981 | 25.15 | 9.59 | 0.47 |
| 5| 1214 | 27.99 | 11.76 | 0.51 |
| 10| 2029 | 33.89 | 16.90 | 0.64 |
| 49| 8089 | 95.49 | 61.28 | 1.72 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 667 | 25.37 | 8.26 | 0.44 |
| 2| 844 | 27.49 | 9.57 | 0.48 |
| 3| 999 | 29.01 | 10.68 | 0.51 |
| 5| 1383 | 32.82 | 13.16 | 0.57 |
| 10| 2035 | 40.95 | 18.88 | 0.71 |
| 42| 6858 | 98.73 | 57.22 | 1.66 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5812 | 23.70 | 8.32 | 0.66 |
| 2| 6044 | 32.24 | 11.40 | 0.76 |
| 3| 6061 | 39.02 | 13.78 | 0.83 |
| 4| 6363 | 49.41 | 17.60 | 0.96 |
| 5| 6237 | 48.45 | 17.03 | 0.94 |
| 6| 6584 | 65.02 | 22.99 | 1.13 |
| 7| 6632 | 68.26 | 24.25 | 1.17 |
| 8| 6891 | 82.23 | 28.94 | 1.33 |
| 9| 7041 | 92.01 | 32.08 | 1.43 |
| 10| 7139 | 93.38 | 32.83 | 1.46 |
| 11| 7297 | 99.16 | 35.06 | 1.53 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 1 | 57 | 5869 | 19.05 | 6.73 | 0.61 |
| 10 | 10 | 570 | 6175 | 35.29 | 13.51 | 0.80 |
| 10 | 20 | 1141 | 6515 | 51.85 | 20.50 | 1.00 |
| 10 | 30 | 1710 | 6856 | 71.74 | 28.65 | 1.24 |
| 10 | 45 | 2558 | 7359 | 98.27 | 39.73 | 1.55 |

