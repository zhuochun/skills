---
name: verification-execution
description: Execute an existing software verification strategy or claim set against fixed methods and oracles while preserving raw evidence, environment context, counterexamples, and gaps. Use to validate completed implementation, run layered tests or experiments, adjudicate release evidence, reproduce results, or independently check named claims. Use verification-strategy-design first when claims, methods, or pass-fail rules are undefined.
---

# Verification Execution

Turn a verification plan into inspectable evidence. Judge only what the executed method can show under the conditions actually exercised.

## Preserve evidence integrity and authority

- Consume an existing strategy or explicit claim set. If important claims, methods, or oracles are missing, pause those entries and route them to `$verification-strategy-design`; do not invent success criteria after observing results.
- Validate supplied claims, methods, snapshots, environments, and validity limits. Execute missing, stale, invalid, suspicious, or explicitly independent claims; reuse matching valid evidence unless the strategy requires a fresh set.
- Freeze each claim key and plain-language label, method, oracle, tolerance, inputs, environment, and evidence owner before execution. Record any approved correction visibly.
- Execute authorized checks only; production traffic, fault injection, destructive tests, mutation, external writes, expensive load, or user-affecting experiments require permission and safeguards.
- Preserve relevant raw output and diagnostic artifacts. Summaries supplement evidence; they do not replace it.
- Report evidence to the accountable decision owner. Passing evidence does not itself approve release, cutover, risk acceptance, or support-policy change.
- Increase evaluator independence with consequence, irreversibility, and uncertainty. A separate context is useful only when it receives distinct criteria or evidence and retains permission to reject the implementation.

## Execution workflow

1. **Ingest the contract.** Record `VER-*` claims and labels, risks, methods, oracles, execution points, owners, dependencies, renewal, and existing-evidence disposition. Reject references without plain-language meaning.
2. **Preflight the method.** Confirm tools, versions, permissions, data handling, environment fidelity, isolation, expected duration, stop controls, reset or cleanup, and artifact locations. Record deviations that can weaken interpretation before running.
3. **Establish the comparison state.** Capture the relevant baseline, current version, configuration, workload, dependency state, time window, and prior authoritative result. For differential checks, identify both sides and the allowed difference.
4. **Execute in feedback order.** Run cheap deterministic checks before expensive or risky methods unless dependencies require otherwise. Preserve invocation, inputs, environment, material times, exit status, and raw result.
5. **Apply the fixed oracle.** Classify each attempt as **pass**, **fail**, **inconclusive**, or **not run**. Do not convert a flaky pass, partial environment, missing assertion, clean dynamic-tool run, or absent signal into success. If the oracle itself proves invalid, mark the claim inconclusive and return the oracle for redesign.
6. **Preserve counterexamples.** Minimize only while failure reproduces. Save enough seed, trace, fixture, diff, log, profile, screenshot, or replay state for durability. Separate product, harness, environment, and oracle failures.
7. **Respect method boundaries.** Treat workload, scheduling, failure injection, traffic population, instrumentation, and runtime modes as part of dynamic evidence. Treat models, simulations, mocks, canaries, and production telemetry as bounded representations, not universal proof.
8. **Check safety and cleanup.** Stop on the predefined threshold, unexpected blast radius, loss of isolation, corrupted baseline, or unreliable control path. Restore temporary state, stop generated load, remove test artifacts where required, and report cleanup evidence.
9. **Synthesize per claim.** Explain contradictions, unexecuted regions, stale evidence, and the decisive result. Green majorities cannot cancel a failed critical invariant.
10. **Route the next action.** Send implementation defects to `$scoped-change-implementation`, unclear causal failures to `$software-failure-diagnosis`, weak claims or oracles to `$verification-strategy-design`, missing runtime signals to `$observability-design`, and unsafe architecture assumptions to the relevant design or evaluation skill.

Read [references/evidence-execution.md](references/evidence-execution.md) only when execution needs a durable evidence, attempt, or counterexample ledger, non-obvious method-boundary prompts, or independence calibration.

## Quality gates

- Results retain claim keys and labels; reused, rerun, invalid, and omitted evidence has snapshot-bound disposition.
- Oracles and tolerances precede observation.
- Invocation, inputs, version, environment, and raw evidence are proportionately recoverable.
- Dynamic evidence names exercised behavior and population.
- Failures and inconclusive results remain visible; counterexamples are durable.
- Risky execution respects authorization, isolation, stops, and cleanup.
- Evidence remains distinct from release or risk decisions.

## Reject verification theater

- Preserve all flaky attempts; changes to expected output, tolerance, corpus, or environment require a new contract.
- Coverage, run count, test volume, or green dashboards are not claim coverage.
- Dynamic tools say nothing about unexercised behavior; explanations do not override counterexamples.
- Unsafe, partial, or unrepresentative runs are not equivalent evidence.
- Execution reports never self-approve release.
