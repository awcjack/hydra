--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-30 05:21:54.172000707 UTC |
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
| 1| 5838 | 10.61 | 3.37 | 0.52 |
| 2| 6041 | 12.44 | 3.94 | 0.54 |
| 3| 6238 | 14.67 | 4.64 | 0.58 |
| 5| 6641 | 19.27 | 6.11 | 0.64 |
| 10| 7644 | 29.14 | 9.19 | 0.79 |
| 43| 14281 | 98.78 | 30.87 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 735 | 3.38 | 1.73 | 0.22 |
| 3| 922 | 4.36 | 2.33 | 0.24 |
| 5| 1276 | 6.41 | 3.60 | 0.28 |
| 10| 2180 | 12.13 | 7.25 | 0.40 |
| 54| 10058 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.42 | 7.12 | 0.42 |
| 2 | 114 | 636 | 33.25 | 9.61 | 0.52 |
| 3 | 171 | 747 | 43.60 | 12.49 | 0.63 |
| 4 | 228 | 862 | 53.98 | 15.37 | 0.74 |
| 5 | 281 | 969 | 61.05 | 17.49 | 0.81 |
| 6 | 339 | 1081 | 75.55 | 21.36 | 0.96 |
| 7 | 394 | 1192 | 72.52 | 21.03 | 0.94 |
| 8 | 451 | 1303 | 84.77 | 24.36 | 1.07 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1792 | 24.37 | 7.71 | 0.48 |
| 2| 1944 | 25.88 | 8.79 | 0.51 |
| 3| 2106 | 27.94 | 10.05 | 0.54 |
| 5| 2351 | 30.41 | 12.06 | 0.59 |
| 10| 3118 | 41.11 | 18.40 | 0.75 |
| 42| 7760 | 97.78 | 55.49 | 1.68 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 627 | 22.77 | 7.36 | 0.41 |
| 2| 760 | 24.35 | 8.47 | 0.44 |
| 3| 853 | 24.07 | 9.03 | 0.45 |
| 5| 1285 | 30.72 | 12.25 | 0.54 |
| 10| 1944 | 37.40 | 17.43 | 0.66 |
| 39| 6345 | 96.87 | 53.30 | 1.60 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 644 | 29.13 | 8.90 | 0.48 |
| 2| 741 | 30.27 | 9.86 | 0.50 |
| 3| 945 | 30.94 | 10.75 | 0.52 |
| 5| 1206 | 34.22 | 13.01 | 0.57 |
| 10| 2126 | 49.02 | 20.51 | 0.79 |
| 35| 5972 | 99.38 | 51.39 | 1.59 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 670 | 33.79 | 10.15 | 0.53 |
| 2| 810 | 35.89 | 11.39 | 0.56 |
| 3| 994 | 38.66 | 12.84 | 0.60 |
| 5| 1363 | 43.25 | 15.47 | 0.67 |
| 10| 2098 | 54.59 | 21.98 | 0.84 |
| 29| 4924 | 98.26 | 46.81 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5809 | 27.05 | 9.07 | 0.69 |
| 2| 5979 | 36.97 | 12.44 | 0.80 |
| 3| 6179 | 46.82 | 15.84 | 0.91 |
| 4| 6333 | 55.69 | 18.81 | 1.01 |
| 5| 6287 | 62.15 | 20.83 | 1.08 |
| 6| 6626 | 75.79 | 25.54 | 1.24 |
| 7| 6569 | 77.18 | 25.94 | 1.25 |
| 8| 6943 | 93.89 | 31.67 | 1.44 |
| 9| 6967 | 98.92 | 33.33 | 1.50 |
| 10| 6767 | 96.66 | 32.30 | 1.46 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 1 | 56 | 5867 | 19.89 | 6.76 | 0.62 |
| 10 | 5 | 285 | 6004 | 29.98 | 10.65 | 0.73 |
| 10 | 20 | 1138 | 6512 | 60.42 | 22.68 | 1.09 |
| 10 | 30 | 1710 | 6856 | 80.41 | 30.59 | 1.32 |
| 10 | 40 | 2278 | 7195 | 99.66 | 38.24 | 1.55 |
| 10 | 39 | 2220 | 7160 | 99.82 | 38.19 | 1.55 |

