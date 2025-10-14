--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-14 04:26:58.617538805 UTC |
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
| 1| 5834 | 10.28 | 3.25 | 0.51 |
| 2| 6038 | 12.99 | 4.13 | 0.55 |
| 3| 6239 | 14.69 | 4.65 | 0.58 |
| 5| 6640 | 18.62 | 5.87 | 0.64 |
| 10| 7644 | 28.71 | 9.03 | 0.78 |
| 43| 14285 | 98.58 | 30.79 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 742 | 3.38 | 1.73 | 0.22 |
| 3| 919 | 4.36 | 2.33 | 0.24 |
| 5| 1280 | 6.41 | 3.60 | 0.28 |
| 10| 2182 | 12.13 | 7.25 | 0.40 |
| 54| 10062 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 56 | 524 | 24.42 | 7.12 | 0.42 |
| 2 | 112 | 635 | 32.31 | 9.40 | 0.51 |
| 3 | 170 | 747 | 40.14 | 11.65 | 0.59 |
| 4 | 227 | 858 | 52.49 | 15.04 | 0.72 |
| 5 | 282 | 969 | 59.08 | 16.98 | 0.79 |
| 6 | 339 | 1081 | 74.29 | 21.01 | 0.95 |
| 7 | 394 | 1192 | 75.96 | 21.85 | 0.97 |
| 8 | 451 | 1307 | 93.32 | 26.36 | 1.15 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1825 | 24.37 | 7.71 | 0.48 |
| 2| 1942 | 25.85 | 8.78 | 0.51 |
| 3| 2061 | 26.87 | 9.75 | 0.53 |
| 5| 2464 | 32.04 | 12.53 | 0.61 |
| 10| 3194 | 41.31 | 18.46 | 0.76 |
| 38| 7304 | 92.56 | 51.38 | 1.59 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 639 | 22.53 | 7.32 | 0.41 |
| 2| 693 | 22.62 | 7.95 | 0.42 |
| 3| 902 | 25.06 | 9.31 | 0.46 |
| 5| 1225 | 29.81 | 12.00 | 0.53 |
| 10| 2035 | 39.73 | 18.08 | 0.69 |
| 42| 6605 | 95.50 | 54.94 | 1.61 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 664 | 29.13 | 8.90 | 0.48 |
| 2| 865 | 29.97 | 9.84 | 0.50 |
| 3| 957 | 33.43 | 11.45 | 0.55 |
| 5| 1306 | 35.60 | 13.43 | 0.59 |
| 10| 1970 | 46.53 | 19.77 | 0.76 |
| 37| 6122 | 99.90 | 52.85 | 1.61 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 697 | 33.79 | 10.15 | 0.53 |
| 2| 765 | 35.17 | 11.17 | 0.55 |
| 3| 969 | 37.88 | 12.61 | 0.59 |
| 5| 1289 | 43.36 | 15.49 | 0.67 |
| 10| 1984 | 53.53 | 21.65 | 0.83 |
| 28| 4719 | 96.87 | 45.76 | 1.47 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5789 | 27.09 | 9.10 | 0.69 |
| 2| 5974 | 35.83 | 12.04 | 0.79 |
| 3| 6136 | 45.82 | 15.42 | 0.90 |
| 4| 6411 | 57.35 | 19.40 | 1.04 |
| 5| 6447 | 63.88 | 21.52 | 1.11 |
| 6| 6592 | 75.56 | 25.48 | 1.23 |
| 7| 6705 | 79.65 | 26.84 | 1.28 |
| 8| 6707 | 84.13 | 28.19 | 1.33 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5834 | 18.75 | 6.26 | 0.60 |
| 10 | 1 | 57 | 5869 | 22.29 | 7.58 | 0.64 |
| 10 | 5 | 284 | 6004 | 29.35 | 10.43 | 0.73 |
| 10 | 10 | 568 | 6172 | 39.06 | 14.30 | 0.84 |
| 10 | 30 | 1709 | 6855 | 80.92 | 30.76 | 1.33 |
| 10 | 39 | 2219 | 7158 | 99.12 | 37.95 | 1.54 |

