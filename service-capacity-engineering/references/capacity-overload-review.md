# Capacity and Overload Review

## Service and demand contract

- Useful-completion boundary:
- Work unit and workload classes:
- Correctness plus latency / freshness objective:
- Demand model: open, closed, or partly open:

| Dimension | Normal | Peak | Failure / recovery | Evidence and uncertainty |
| --- | --- | --- | --- | --- |
| Arrival rate / concurrency | | | | |
| Size and mix | | | | |
| Burst and skew | | | | |
| Fan-out and retries | | | | |

## End-to-end model

| Stage / dependency | Service time | Concurrency or pool | Queue / bound | Shared with | Scaling behavior | Signals |
| --- | --- | --- | --- | --- | --- | --- |

Useful checks where assumptions fit:

- Little's Law: work in progress is approximately throughput multiplied by time in system.
- A queue growing while arrival rate is stable usually indicates slower service or blocked drain.
- Fan-out makes request success and latency depend on the slowest or failed children, not the average child.
- Coordination and contention can make added workers reduce marginal throughput.

## Model challenges

| Hypothesis | Workload / fault | Predicted response | Oracle | Observation | Model revision |
| --- | --- | --- | --- | --- | --- |

## Operating envelope

- Safe sustained envelope:
- Short burst envelope and duration:
- Reserve amount and purpose:
- Failover and recovery requirement:
- Elasticity lag and constraints:
- Recalibration trigger:

## Overload layers

| Boundary | Mechanism | Work class / priority | Accept / delay / degrade / reject / shed | Caller signal | Recovery / drain signal |
| --- | --- | --- | --- | --- | --- |

## Findings

| Finding | Evidence | Consequence | Action | Owner | Verification |
| --- | --- | --- | --- | --- | --- |

## Review questions

- Where does accepted work become irrecoverable obligation?
- Which queue can grow after the visible request has returned?
- Can high-priority or recovery work obtain capacity during overload?
- Does failover move demand onto a system that already consumed its reserve?
- What tells an operator that shedding is preserving the system rather than hiding failure?
