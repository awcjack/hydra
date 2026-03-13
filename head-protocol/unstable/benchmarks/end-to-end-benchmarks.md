--- 
sidebar_label: 'End-to-end benchmarks' 
sidebar_position: 4 
--- 

# End-to-end benchmark results 

This page is intended to collect the latest end-to-end benchmark  results produced by Hydra's continuous integration (CI) system from  the latest `master` code.

:::caution

Please note that these results are approximate  as they are currently produced from limited cloud VMs and not controlled hardware.  Rather than focusing on the absolute results,   the emphasis should be on relative results,  such as how the timings for a scenario evolve as the code changes.

:::

_Generated at_  2026-03-13 04:38:56.617566481 UTC


## Baseline Scenario



| Number of nodes |  1 | 
| -- | -- |
| _Number of txs_ | 300 |
| _Avg. Confirmation Time (ms)_ | 5.731026433 |
| _P99_ | 7.781603829999999ms |
| _P95_ | 7.0468663ms |
| _P50_ | 5.5121970000000005ms |
| _Number of Invalid txs_ | 0 |
| _Fanout outputs_        | 1 |
      

## Three local nodes



| Number of nodes |  3 | 
| -- | -- |
| _Number of txs_ | 900 |
| _Avg. Confirmation Time (ms)_ | 38.639108114 |
| _P99_ | 68.45475647ms |
| _P95_ | 57.910324149999994ms |
| _P50_ | 36.779622ms |
| _Number of Invalid txs_ | 0 |
| _Fanout outputs_        | 3 |
      
