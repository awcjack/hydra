--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-06 04:23:51.29402525 UTC |
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
| 1| 5834 | 10.17 | 3.22 | 0.51 |
| 2| 6037 | 12.23 | 3.86 | 0.54 |
| 3| 6236 | 14.29 | 4.51 | 0.57 |
| 5| 6640 | 18.41 | 5.80 | 0.63 |
| 10| 7646 | 28.92 | 9.11 | 0.79 |
| 43| 14286 | 98.75 | 30.86 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 558 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 919 | 4.36 | 2.33 | 0.24 |
| 5| 1280 | 6.41 | 3.60 | 0.28 |
| 10| 2173 | 12.13 | 7.25 | 0.40 |
| 54| 10064 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.46 | 7.13 | 0.42 |
| 2 | 114 | 636 | 34.38 | 9.91 | 0.53 |
| 3 | 170 | 747 | 41.20 | 11.90 | 0.60 |
| 4 | 228 | 858 | 52.55 | 15.06 | 0.72 |
| 5 | 281 | 969 | 60.97 | 17.41 | 0.81 |
| 6 | 340 | 1081 | 69.19 | 19.80 | 0.90 |
| 7 | 393 | 1196 | 74.43 | 21.53 | 0.96 |
| 8 | 450 | 1307 | 97.97 | 27.43 | 1.20 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1748 | 22.92 | 7.32 | 0.47 |
| 2| 1882 | 24.40 | 8.40 | 0.49 |
| 3| 2060 | 27.39 | 9.88 | 0.53 |
| 5| 2279 | 29.31 | 11.75 | 0.57 |
| 10| 3298 | 43.21 | 18.97 | 0.78 |
| 40| 7626 | 95.87 | 53.64 | 1.65 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 640 | 22.84 | 7.40 | 0.42 |
| 2| 797 | 23.56 | 8.22 | 0.43 |
| 3| 883 | 25.09 | 9.32 | 0.46 |
| 5| 1225 | 28.93 | 11.73 | 0.52 |
| 10| 2121 | 42.27 | 18.78 | 0.72 |
| 42| 6632 | 97.60 | 55.54 | 1.63 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 663 | 29.17 | 8.91 | 0.48 |
| 2| 740 | 30.20 | 9.84 | 0.50 |
| 3| 940 | 32.76 | 11.24 | 0.54 |
| 5| 1324 | 35.69 | 13.45 | 0.59 |
| 10| 1998 | 47.28 | 20.00 | 0.76 |
| 35| 5820 | 99.27 | 51.22 | 1.58 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 675 | 33.83 | 10.15 | 0.53 |
| 2| 832 | 35.92 | 11.40 | 0.56 |
| 3| 1083 | 39.34 | 13.05 | 0.61 |
| 5| 1217 | 41.86 | 15.04 | 0.65 |
| 10| 2149 | 55.47 | 22.24 | 0.85 |
| 29| 4927 | 98.69 | 46.88 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5793 | 27.00 | 9.08 | 0.69 |
| 2| 5985 | 37.08 | 12.50 | 0.80 |
| 3| 6193 | 47.10 | 15.88 | 0.92 |
| 4| 6221 | 53.95 | 18.15 | 0.99 |
| 5| 6439 | 63.61 | 21.40 | 1.10 |
| 6| 6488 | 67.58 | 22.72 | 1.15 |
| 7| 6692 | 83.72 | 28.24 | 1.32 |
| 8| 6707 | 81.44 | 27.25 | 1.30 |
| 9| 7022 | 99.46 | 33.49 | 1.50 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 1 | 57 | 5868 | 20.34 | 6.91 | 0.62 |
| 10 | 5 | 284 | 6003 | 29.79 | 10.58 | 0.73 |
| 10 | 10 | 569 | 6173 | 39.95 | 14.60 | 0.85 |
| 10 | 30 | 1707 | 6854 | 79.60 | 30.31 | 1.31 |
| 10 | 39 | 2222 | 7161 | 98.05 | 37.58 | 1.53 |

