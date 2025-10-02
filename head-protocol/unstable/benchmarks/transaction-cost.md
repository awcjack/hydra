--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-02 03:14:31.040279468 UTC |
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
| 1| 5836 | 10.17 | 3.22 | 0.51 |
| 2| 6038 | 12.46 | 3.94 | 0.55 |
| 3| 6239 | 14.90 | 4.72 | 0.58 |
| 5| 6643 | 18.64 | 5.88 | 0.64 |
| 10| 7644 | 29.57 | 9.34 | 0.79 |
| 43| 14281 | 99.32 | 31.06 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 740 | 3.38 | 1.73 | 0.22 |
| 3| 920 | 4.36 | 2.33 | 0.24 |
| 5| 1280 | 6.41 | 3.60 | 0.28 |
| 10| 2179 | 12.13 | 7.25 | 0.40 |
| 54| 10072 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 33.25 | 9.63 | 0.52 |
| 3 | 170 | 747 | 42.33 | 12.19 | 0.61 |
| 4 | 226 | 862 | 52.58 | 15.04 | 0.72 |
| 5 | 282 | 974 | 64.19 | 18.21 | 0.84 |
| 6 | 339 | 1081 | 73.39 | 20.81 | 0.94 |
| 7 | 395 | 1192 | 82.69 | 23.47 | 1.04 |
| 8 | 450 | 1307 | 80.87 | 23.43 | 1.03 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1801 | 24.37 | 7.71 | 0.48 |
| 2| 1925 | 25.80 | 8.77 | 0.51 |
| 3| 2081 | 27.32 | 9.86 | 0.53 |
| 5| 2364 | 31.38 | 12.33 | 0.60 |
| 10| 2978 | 37.63 | 17.42 | 0.71 |
| 40| 7680 | 98.27 | 54.29 | 1.67 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 610 | 22.84 | 7.37 | 0.41 |
| 2| 793 | 24.28 | 8.45 | 0.44 |
| 3| 935 | 26.09 | 9.60 | 0.47 |
| 5| 1239 | 30.25 | 12.09 | 0.54 |
| 10| 1946 | 40.06 | 18.16 | 0.69 |
| 43| 6727 | 98.58 | 56.43 | 1.65 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 679 | 29.17 | 8.91 | 0.48 |
| 2| 824 | 29.22 | 9.61 | 0.49 |
| 3| 966 | 33.39 | 11.43 | 0.55 |
| 5| 1319 | 35.76 | 13.47 | 0.59 |
| 10| 1916 | 43.47 | 18.93 | 0.72 |
| 36| 6090 | 99.75 | 52.12 | 1.60 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 686 | 33.83 | 10.15 | 0.53 |
| 2| 811 | 35.88 | 11.39 | 0.56 |
| 3| 962 | 37.84 | 12.60 | 0.59 |
| 5| 1324 | 43.17 | 15.45 | 0.67 |
| 10| 2072 | 54.88 | 22.05 | 0.84 |
| 28| 5037 | 98.47 | 46.28 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5794 | 27.09 | 9.09 | 0.69 |
| 2| 5986 | 35.80 | 12.04 | 0.79 |
| 3| 6109 | 44.84 | 15.07 | 0.89 |
| 4| 6258 | 55.08 | 18.54 | 1.00 |
| 5| 6313 | 59.37 | 19.91 | 1.05 |
| 6| 6761 | 76.42 | 25.83 | 1.25 |
| 7| 6714 | 83.57 | 28.15 | 1.32 |
| 8| 6933 | 90.51 | 30.46 | 1.41 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 1 | 57 | 5868 | 19.45 | 6.61 | 0.61 |
| 10 | 10 | 569 | 6173 | 38.62 | 14.15 | 0.84 |
| 10 | 20 | 1139 | 6513 | 59.10 | 22.22 | 1.07 |
| 10 | 30 | 1709 | 6856 | 80.85 | 30.74 | 1.33 |
| 10 | 39 | 2222 | 7161 | 98.93 | 37.88 | 1.54 |

