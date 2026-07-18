---
name: verification-execution
description: Execute an existing software verification strategy or explicit claim set against fixed methods and oracles, preserving raw evidence, environment context, counterexamples, and unresolved gaps. Use when the user asks to run a verification plan, validate a completed implementation, execute layered tests or experiments, adjudicate release evidence, reproduce verification results, or independently check whether named engineering claims hold. Use verification-strategy-design first when claims, methods, or pass-fail rules are not yet defined.
---

# Verification Execution

Turn a verification plan into inspectable evidence. Judge only what the executed method can show under the conditions actually exercised.

## Preserve evidence integrity and authority

- Consume an existing strategy or explicit claim set. If important claims, methods, or oracles are missing, pause those entries and route them to `$verification-strategy-design`; do not invent success criteria after observing results.
- Freeze each claim key and plain-language label, method, oracle, tolerance, inputs, environment, and evidence owner before execution. Record any approved correction visibly.
- Execute only authorized checks. Require explicit permission and safeguards for production traffic, fault injection, destructive tests, data mutation, external writes, expensive load, or experiments that can affect other users.
- Preserve relevant raw output and diagnostic artifacts. Summaries supplement evidence; they do not replace it.
- Report evidence to the accountable decision owner. Passing evidence does not itself approve release, cutover, risk acceptance, or support-policy change.
- Increase evaluator independence with consequence, irreversibility, and uncertainty. A separate context is useful only when it receives distinct criteria or evidence and retains permission to reject the implementation.

## Execution workflow

1. **Ingest the evidence contract.** Build the execution set from named `VER-*` claims and labels, their risks, methods, oracles, execution points, owners, dependencies, and renewal conditions. Reject ambiguous references that cannot be wired back to plain-language meaning.
2. **Preflight the method.** Confirm tools, versions, permissions, data handling, environment fidelity, isolation, expected duration, stop controls, reset or cleanup, and artifact locations. Record deviations that can weaken interpretation before running.
3. **Establish the comparison state.** Capture the relevant baseline, current version, configuration, workload, dependency state, time window, and prior authoritative result. For differential checks, identify both sides and the allowed difference.
4. **Execute in feedback order.** Run cheap deterministic evidence before expensive, risky, or production-shaped methods unless the strategy specifies another dependency. Preserve the exact invocation, inputs, environment identity, timestamps when material, exit status, and raw result.
5. **Apply the fixed oracle.** Classify each attempt as **pass**, **fail**, **inconclusive**, or **not run**. Do not convert a flaky pass, partial environment, missing assertion, clean dynamic-tool run, or absent signal into success. If the oracle itself proves invalid, mark the claim inconclusive and return the oracle for redesign.
6. **Preserve counterexamples.** Minimize failing inputs or histories only while the original failure still reproduces. Save seeds, traces, fixtures, diffs, logs, profiles, screenshots, or replay state needed to make the finding durable. Separate product failure from harness, environment, or oracle failure.
7. **Respect method boundaries.** Treat workload, scheduling, failure injection, traffic population, instrumentation, and runtime modes as part of dynamic evidence. Treat models, simulations, mocks, canaries, and production telemetry as bounded representations, not universal proof.
8. **Check safety and cleanup.** Stop on the predefined threshold, unexpected blast radius, loss of isolation, corrupted baseline, or unreliable control path. Restore temporary state, stop generated load, remove test artifacts where required, and report cleanup evidence.
9. **Synthesize without averaging away failure.** Report results per claim before any overall judgment. Explain contradictions among layers, unexecuted regions, stale evidence, and which result is decisive for the current decision. A majority of green checks does not cancel one failed critical invariant.
10. **Route the next action.** Send implementation defects to `$scoped-change-implementation`, unclear causal failures to `$software-failure-diagnosis`, weak claims or oracles to `$verification-strategy-design`, missing runtime signals to `$observability-design`, and unsafe architecture assumptions to the relevant design or evaluation skill.

Use [references/evidence-execution.md](references/evidence-execution.md) for the knowledge-derived execution model, status semantics, method checks, and evidence ledger.

## Quality gates

- Every result retains its claim key and plain-language label.
- The oracle and allowed tolerance were fixed before the decisive observation.
- Exact invocation, inputs, version, environment, and raw evidence are recoverable in proportion to consequence.
- Dynamic evidence states which behavior and population were exercised.
- Failures and inconclusive results remain visible and are not collapsed into an overall pass.
- Counterexamples are durable enough for repair or independent reproduction.
- Risky execution stayed within authorized isolation and stop controls, with cleanup accounted for.
- The report distinguishes executed evidence from release or risk decisions.

## Reject verification theater

- Do not rerun a flaky check until it passes and report only the green attempt.
- Do not change expected output, tolerance, corpus, or environment after failure without recording a new evidence contract.
- Do not treat code coverage, run count, test volume, or dashboard greenness as claim coverage.
- Do not say a dynamic tool found no defect when the relevant behavior was not exercised.
- Do not let the implementer's explanation override an observable counterexample.
- Do not call an unsafe, partial, or materially unrepresentative run equivalent to the strategy's requested evidence.
- Do not make the execution report a self-issued release approval.
