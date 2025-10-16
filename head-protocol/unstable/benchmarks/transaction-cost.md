--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-16 04:27:32.024692515 UTC |
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
| 1| 5841 | 10.40 | 3.30 | 0.52 |
| 2| 6037 | 12.44 | 3.94 | 0.54 |
| 3| 6236 | 14.71 | 4.65 | 0.58 |
| 5| 6643 | 18.41 | 5.80 | 0.63 |
| 10| 7644 | 28.81 | 9.07 | 0.78 |
| 43| 14279 | 98.95 | 30.93 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 920 | 4.36 | 2.33 | 0.24 |
| 5| 1280 | 6.41 | 3.60 | 0.28 |
| 10| 2178 | 12.13 | 7.25 | 0.40 |
| 54| 10064 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 529 | 25.24 | 7.32 | 0.43 |
| 2 | 113 | 636 | 34.27 | 9.87 | 0.53 |
| 3 | 170 | 747 | 43.55 | 12.48 | 0.62 |
| 4 | 226 | 858 | 49.64 | 14.33 | 0.69 |
| 5 | 283 | 969 | 61.42 | 17.58 | 0.82 |
| 6 | 341 | 1081 | 69.18 | 19.83 | 0.90 |
| 7 | 396 | 1192 | 83.23 | 23.73 | 1.05 |
| 8 | 449 | 1303 | 81.05 | 23.53 | 1.03 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1794 | 23.92 | 7.60 | 0.48 |
| 2| 1942 | 25.92 | 8.80 | 0.51 |
| 3| 2013 | 25.95 | 9.49 | 0.52 |
| 5| 2518 | 33.37 | 12.89 | 0.62 |
| 10| 3251 | 42.39 | 18.75 | 0.77 |
| 40| 7369 | 93.54 | 52.94 | 1.61 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 662 | 22.81 | 7.38 | 0.42 |
| 2| 734 | 24.04 | 8.39 | 0.44 |
| 3| 916 | 25.02 | 9.30 | 0.46 |
| 5| 1263 | 31.11 | 12.35 | 0.55 |
| 10| 2128 | 43.25 | 19.07 | 0.73 |
| 42| 6510 | 96.08 | 55.08 | 1.61 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 651 | 29.13 | 8.90 | 0.48 |
| 2| 800 | 31.24 | 10.16 | 0.51 |
| 3| 910 | 32.68 | 11.22 | 0.54 |
| 5| 1249 | 37.10 | 13.79 | 0.60 |
| 10| 2001 | 45.04 | 19.42 | 0.74 |
| 36| 6033 | 98.61 | 51.85 | 1.59 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 686 | 33.87 | 10.16 | 0.53 |
| 2| 861 | 36.64 | 11.62 | 0.57 |
| 3| 933 | 37.91 | 12.62 | 0.59 |
| 5| 1327 | 43.27 | 15.47 | 0.67 |
| 10| 2112 | 54.62 | 21.99 | 0.84 |
| 28| 4923 | 98.93 | 46.34 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5793 | 27.00 | 9.06 | 0.69 |
| 2| 5871 | 34.95 | 11.72 | 0.78 |
| 3| 6008 | 41.56 | 13.90 | 0.85 |
| 4| 6179 | 50.13 | 16.83 | 0.95 |
| 5| 6470 | 65.19 | 22.00 | 1.12 |
| 6| 6624 | 74.53 | 25.11 | 1.22 |
| 7| 6874 | 86.10 | 29.16 | 1.36 |
| 8| 6634 | 87.58 | 29.37 | 1.36 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 17.42 | 5.80 | 0.59 |
| 10 | 1 | 57 | 5868 | 21.66 | 7.37 | 0.64 |
| 10 | 20 | 1138 | 6512 | 59.10 | 22.22 | 1.07 |
| 10 | 30 | 1706 | 6853 | 80.67 | 30.67 | 1.32 |
| 10 | 39 | 2216 | 7155 | 99.38 | 38.03 | 1.54 |

