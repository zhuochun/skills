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
| Bidirectional model-code conformance | Repair a formal model without making it too restrictive or too permissive | Traces and invariants can both omit behavior; disagreement still needs diagnosis |
| Deterministic simulation | Replayable concurrency, timing, and failure histories | Simulator fidelity and third-party behavior |
| Load/performance tests | Capacity, latency, queueing, and resource assumptions | Production demand feedback and unmodeled workloads |
| Failure injection/game day | Runtime containment, recovery, and operator behavior | Faults and conditions not injected |
| Shadow/replay/differential checks | Old/new comparison under realistic inputs | Side effects, sampling bias, and hidden state |
| Canary/staged rollout | Current rollout behavior with bounded exposure | Rare paths and future conditions |
| Telemetry and incident evidence | Actual production behavior and unknown interactions | Reactive evidence after exposure |

For model repair, require representative implementation traces to remain possible and explicit safety invariants to exclude prohibited traces. Treat disagreement as evidence about the model, implementation, invariant, instrumentation, or harness; do not automatically weaken either check.

## Agent and tool-using systems

- Define business-grounded cases and separate control activation, execution trajectory, artifact or output result, and customer or business outcome claims.
- Match deterministic, semantic, behavioral, and production-derived evidence to distinct uncertainty instead of relying on one evaluator.
- For a consequential semantic judge, retain blind reviewer labels, inter-rater disagreement and resolution, per-class held-out errors, and rubric-reopen triggers; do not coerce genuine unknowns into pass or fail.
- Bind results to relevant model, prompt, policy, context, tool, harness, environment, and task-set versions. Feed reviewed production failures and corrections back into named regression cases.
- When deciding whether to retain a model-invoked component, include trigger negatives and a with-or-without ablation; a plausible component is not yet an earned one.

## Strategy matrix

| Claim key and plain-language label | Consequence/reversibility | Assumptions | Evidence and oracle | What it cannot prove | Owner/run point | Renewal trigger |
| --- | --- | --- | --- | --- | --- | --- |

Use keys such as `VER-ledger-conservation — Ledger value is conserved`. Every external reference must repeat the label and point back to this entry. A key makes composition traceable; it must not force a human to reconstruct meaning from an ID alone.

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

The portfolio is a plan. Record execution and adjudication separately; an unrun method or unobserved signal is an evidence gap, not a passing result.
