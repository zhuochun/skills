# Verification Evidence Portfolio

## Method selection

| Evidence method | Strongest use | Common boundary |
| --- | --- | --- |
| Static analysis and types | Local structural and interface properties | Runtime environment and semantic intent |
| Unit tests | Fast deterministic behavior of one module | Real integration, deployment, and partial failure |
| Integration/component tests | Adapter and dependency behavior | Full consumer estate and production topology |
| Contract/compatibility tests | Producer-consumer semantics and version combinations | Emergent multi-service behavior |
| Characterization tests | Preserve observed legacy behavior while opening a seam | Whether old behavior is desirable or complete |
| Property-based tests | Generated input spaces with explicit invariants | Properties not encoded in the oracle |
| Stateful/model-based tests | Interaction sequences and state-machine behavior | Environment contracts outside the model |
| Formal specification/model checking | Design-state counterexamples and protocol logic | Implementation, hardware, operations, and omitted assumptions |
| Deterministic simulation | Replayable concurrency, timing, and failure histories | Simulator fidelity and third-party behavior |
| Load/performance tests | Capacity, latency, queueing, and resource assumptions | Production demand feedback and unmodeled workloads |
| Failure injection/game day | Runtime containment, recovery, and operator behavior | Faults and conditions not injected |
| Shadow/replay/differential checks | Old/new comparison under realistic inputs | Side effects, sampling bias, and hidden state |
| Canary/staged rollout | Current rollout behavior with bounded exposure | Rare paths and future conditions |
| Telemetry and incident evidence | Actual production behavior and unknown interactions | Reactive evidence after exposure |

## Strategy matrix

| Claim | Consequence/reversibility | Assumptions | Evidence and oracle | What it cannot prove | Owner/run point | Renewal trigger |
| --- | --- | --- | --- | --- | --- | --- |

## Cross-boundary contract prompts

Check payload meaning, identifiers, optional or missing fields, ordering, duplication, headers, content types, authorization, timeouts, retry safety, deletion, side effects, and old/new version combinations.

## Failure and recovery prompts

- Which failure classes are expected, hazardous but known, or interaction-driven unknowns?
- Does the evidence exercise degraded dependencies, overload, stale authority, partial completion, restart, replay, and restoration?
- Can observers, credentials, abort controls, cleanup, and operators function during the experiment?
- What artifact makes a failure replayable and actionable?

## Portfolio summary

Record:

1. Decision and release scope
2. Highest-consequence claims
3. Minimum required evidence before merge, deploy, exposure, and completion
4. Known gaps and accepted risk owner
5. Feedback-time budget
6. Evidence maintenance and stale-signal review
7. How escaped failures update earlier layers
