--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-22 05:20:17.274721916 UTC |
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
| 1| 5834 | 10.57 | 3.36 | 0.52 |
| 2| 6037 | 12.44 | 3.94 | 0.54 |
| 3| 6242 | 14.71 | 4.65 | 0.58 |
| 5| 6640 | 19.00 | 6.01 | 0.64 |
| 10| 7647 | 28.90 | 9.10 | 0.79 |
| 43| 14279 | 98.56 | 30.79 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 558 | 2.44 | 1.16 | 0.20 |
| 2| 740 | 3.38 | 1.73 | 0.22 |
| 3| 922 | 4.36 | 2.33 | 0.24 |
| 5| 1283 | 6.41 | 3.60 | 0.28 |
| 10| 2176 | 12.13 | 7.25 | 0.40 |
| 54| 10076 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 24.42 | 7.12 | 0.42 |
| 2 | 114 | 640 | 34.23 | 9.85 | 0.53 |
| 3 | 170 | 747 | 41.34 | 11.97 | 0.60 |
| 4 | 228 | 858 | 53.62 | 15.26 | 0.73 |
| 5 | 282 | 969 | 56.55 | 16.47 | 0.77 |
| 6 | 339 | 1081 | 64.15 | 18.59 | 0.85 |
| 7 | 395 | 1192 | 82.51 | 23.51 | 1.04 |
| 8 | 451 | 1307 | 88.37 | 25.33 | 1.10 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1785 | 24.29 | 7.69 | 0.48 |
| 2| 1917 | 25.43 | 8.68 | 0.50 |
| 3| 2013 | 25.98 | 9.50 | 0.52 |
| 5| 2376 | 31.53 | 12.37 | 0.60 |
| 10| 2980 | 38.08 | 17.53 | 0.72 |
| 40| 7567 | 98.18 | 54.25 | 1.67 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 633 | 22.57 | 7.32 | 0.41 |
| 2| 699 | 22.62 | 7.97 | 0.42 |
| 3| 1019 | 27.79 | 10.12 | 0.49 |
| 5| 1289 | 31.43 | 12.47 | 0.55 |
| 10| 1937 | 39.40 | 18.01 | 0.68 |
| 40| 6501 | 96.97 | 53.99 | 1.61 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 635 | 26.83 | 8.26 | 0.45 |
| 2| 810 | 29.26 | 9.62 | 0.49 |
| 3| 967 | 31.20 | 10.84 | 0.52 |
| 5| 1323 | 38.49 | 14.22 | 0.62 |
| 10| 2093 | 48.78 | 20.45 | 0.78 |
| 36| 5999 | 97.32 | 51.44 | 1.57 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 694 | 33.83 | 10.15 | 0.53 |
| 2| 801 | 35.85 | 11.38 | 0.56 |
| 3| 997 | 38.62 | 12.83 | 0.60 |
| 5| 1256 | 42.60 | 15.27 | 0.66 |
| 10| 2078 | 54.73 | 22.01 | 0.84 |
| 29| 4903 | 98.48 | 46.83 | 1.50 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5804 | 26.96 | 9.05 | 0.69 |
| 2| 5982 | 37.01 | 12.46 | 0.80 |
| 3| 6049 | 42.67 | 14.33 | 0.86 |
| 4| 6205 | 53.75 | 18.06 | 0.99 |
| 5| 6507 | 65.17 | 22.05 | 1.12 |
| 6| 6557 | 72.97 | 24.56 | 1.21 |
| 7| 6724 | 83.68 | 28.27 | 1.33 |
| 8| 7131 | 96.82 | 32.75 | 1.48 |
| 9| 6944 | 95.73 | 32.23 | 1.46 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5835 | 18.30 | 6.11 | 0.60 |
| 10 | 1 | 58 | 5869 | 20.34 | 6.91 | 0.62 |
| 10 | 5 | 285 | 6004 | 29.79 | 10.58 | 0.73 |
| 10 | 10 | 570 | 6174 | 39.06 | 14.30 | 0.84 |
| 10 | 20 | 1140 | 6515 | 59.73 | 22.44 | 1.08 |
| 10 | 38 | 2163 | 7126 | 96.44 | 36.92 | 1.51 |

