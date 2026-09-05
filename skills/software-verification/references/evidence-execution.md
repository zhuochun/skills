# Software Verification Execution Reference

Keep execution records in the repository's existing test, CI, experiment, or change artifact when possible. Do not create a parallel evidence bureaucracy.

## Result status

- **Pass:** The executed method satisfied the predeclared oracle under the recorded conditions.
- **Fail:** The method produced a valid counterexample or crossed a fixed failure threshold.
- **Inconclusive:** The method, environment, oracle, harness, or evidence integrity cannot adjudicate the claim.
- **Not run:** Execution did not occur. State why and who owns the missing action.

Never use “pass with caveats” when the caveat invalidates the oracle or requested environment. Use **inconclusive**.

## Evidence ledger

| Claim key and label | Method and oracle | Version, environment, and inputs | Invocation and artifact | Result | Limits and next action |
| --- | --- | --- | --- | --- | --- |

## Attempt record

- Claim key and label:
- Strategy version or source:
- Executor and evidence owner:
- Start/end time when material:
- System and dependency versions:
- Configuration, instrumentation, and data identity:
- Exact invocation or experiment steps:
- Workload, seed, schedule, population, or failure injected:
- Predeclared oracle and tolerance:
- Stop condition and isolation:
- Exit status and raw artifacts:
- Result classification:
- Unexpected observations:
- Cleanup and restoration evidence:

## Counterexample record

- Claim violated:
- Smallest still-reproducing input, history, or condition:
- Original and minimized evidence:
- Reproduction command or replay identity:
- Whether failure belongs to product, harness, environment, or oracle:
- Evidence that rejects nearby explanations:
- Regression destination and owner:

## Method boundary prompts

- **Static/model evidence:** Which implementation and environment assumptions remain unconnected?
- **Example or contract tests:** Which consumer, adapter, ordering, failure, or version states remain outside the seam?
- **Property/fuzz evidence:** Is the oracle meaningful, and what input regions did generation actually reach?
- **Simulation:** Which network, disk, clock, runtime, dependency, or operator behavior is simplified?
- **Load/performance:** Does workload, offered load, data size, topology, warm-up, and statistic match the claim?
- **Fault injection/game day:** Is steady state customer-visible, is the experiment bounded, and did the control path remain usable?
- **Canary/shadow/runtime:** Which cohorts and rare paths were absent, and were side effects isolated or comparable? Preserve test identity across storage, messaging, caches, observability, and effects; stop if context can leak.

## Independence calibration

Increase separation when a failure would be costly, hard to reverse, easy for the builder to rationalize, or dependent on subjective interpretation. Independence may mean a fresh context, different owner, separately authored oracle, external reference implementation, consumer-owned contract, or production evidence. It does not require a different person for every local test.
