--- 
sidebar_label: 'Transaction costs' 
sidebar_position: 3 
--- 

# Transaction costs 

Sizes and execution budgets for Hydra protocol transactions. Note that unlisted parameters are currently using `arbitrary` values and results are not fully deterministic and comparable to previous runs.

| Metadata | |
| :--- | :--- |
| _Generated at_ | 2025-10-09 03:38:23.208762875 UTC |
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
| 1| 5841 | 10.17 | 3.22 | 0.51 |
| 2| 6037 | 12.82 | 4.07 | 0.55 |
| 3| 6238 | 14.88 | 4.72 | 0.58 |
| 5| 6646 | 18.83 | 5.95 | 0.64 |
| 10| 7647 | 28.71 | 9.03 | 0.78 |
| 43| 14281 | 99.32 | 31.06 | 1.80 |


## `Commit` transaction costs
 This uses ada-only outputs for better comparability.

| UTxO | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :--- | ------: | --------: | --------: | --------: |
| 1| 561 | 2.44 | 1.16 | 0.20 |
| 2| 743 | 3.38 | 1.73 | 0.22 |
| 3| 916 | 4.36 | 2.33 | 0.24 |
| 5| 1282 | 6.41 | 3.60 | 0.28 |
| 10| 2172 | 12.13 | 7.25 | 0.40 |
| 54| 10060 | 98.61 | 68.52 | 1.88 |


## `CollectCom` transaction costs

| Parties | UTxO (bytes) |Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :----------- |------: | --------: | --------: | --------: |
| 1 | 57 | 525 | 25.20 | 7.30 | 0.43 |
| 2 | 114 | 636 | 34.27 | 9.87 | 0.53 |
| 3 | 170 | 747 | 41.07 | 11.87 | 0.60 |
| 4 | 226 | 858 | 50.70 | 14.56 | 0.70 |
| 5 | 284 | 974 | 63.82 | 18.09 | 0.84 |
| 6 | 341 | 1081 | 76.03 | 21.55 | 0.97 |
| 7 | 394 | 1196 | 81.06 | 23.13 | 1.02 |
| 8 | 450 | 1303 | 87.79 | 25.14 | 1.10 |


## Cost of Increment Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 1798 | 23.92 | 7.60 | 0.48 |
| 2| 1937 | 25.51 | 8.70 | 0.50 |
| 3| 2013 | 25.95 | 9.49 | 0.52 |
| 5| 2359 | 30.96 | 12.23 | 0.59 |
| 10| 3250 | 41.91 | 18.61 | 0.77 |
| 40| 7615 | 99.21 | 54.57 | 1.68 |


## Cost of Decrement Transaction

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 636 | 22.81 | 7.37 | 0.42 |
| 2| 765 | 23.63 | 8.24 | 0.43 |
| 3| 944 | 26.16 | 9.62 | 0.47 |
| 5| 1274 | 30.95 | 12.31 | 0.55 |
| 10| 2135 | 41.40 | 18.57 | 0.71 |
| 42| 6528 | 97.10 | 55.33 | 1.62 |


## `Close` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 605 | 28.46 | 8.69 | 0.47 |
| 2| 829 | 29.26 | 9.62 | 0.49 |
| 3| 911 | 32.72 | 11.23 | 0.54 |
| 5| 1292 | 35.05 | 13.25 | 0.59 |
| 10| 2002 | 44.30 | 19.18 | 0.73 |
| 37| 6063 | 97.84 | 52.22 | 1.58 |


## `Contest` transaction costs

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 677 | 33.83 | 10.15 | 0.53 |
| 2| 816 | 35.85 | 11.38 | 0.56 |
| 3| 938 | 37.95 | 12.63 | 0.59 |
| 5| 1162 | 41.26 | 14.85 | 0.64 |
| 10| 2117 | 55.71 | 22.31 | 0.85 |
| 29| 5065 | 99.96 | 47.29 | 1.52 |


## `Abort` transaction costs
There is some variation due to the random mixture of initial and already committed outputs.

| Parties | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | ------: | --------: | --------: | --------: |
| 1| 5834 | 27.08 | 9.09 | 0.69 |
| 2| 5891 | 34.87 | 11.67 | 0.78 |
| 3| 6131 | 45.66 | 15.40 | 0.90 |
| 4| 6230 | 52.51 | 17.65 | 0.98 |
| 5| 6439 | 64.83 | 21.88 | 1.12 |
| 6| 6560 | 74.86 | 25.29 | 1.23 |
| 7| 6808 | 82.81 | 27.97 | 1.32 |
| 8| 6872 | 89.01 | 30.00 | 1.39 |


## `FanOut` transaction costs
Involves spending head output and burning head tokens. Uses ada-only UTXO for better comparability.

| Parties | UTxO  | UTxO (bytes) | Tx size | % max Mem | % max CPU | Min fee ₳ |
| :------ | :---- | :----------- | ------: | --------: | --------: | --------: |
| 10 | 0 | 0 | 5835 | 19.63 | 6.56 | 0.61 |
| 10 | 1 | 57 | 5868 | 21.66 | 7.37 | 0.64 |
| 10 | 5 | 285 | 6005 | 28.90 | 10.28 | 0.72 |
| 10 | 10 | 569 | 6173 | 39.06 | 14.30 | 0.84 |
| 10 | 30 | 1706 | 6853 | 81.11 | 30.83 | 1.33 |
| 10 | 38 | 2161 | 7123 | 97.33 | 37.23 | 1.52 |

