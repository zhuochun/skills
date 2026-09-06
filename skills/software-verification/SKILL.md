---
name: software-verification
description: Design or execute risk-proportionate software verification by binding engineering claims to fixed methods, oracles, environments, and inspectable evidence. Use when verification coverage is undefined, evidence is stale or missing, named claims must run, or an independent final check is needed. Keep inner-loop feedback, fresh-context verification, and release authority distinct.
---

# Software Verification

Own the claim-to-evidence lifecycle without changing acceptance criteria after
results are visible. Verification can guide execution or challenge a completed
candidate; it does not approve release, cutover, risk, or support policy.

## Select the mode and independence

- Use **strategy mode** when claims, methods, oracles, environments, or renewal
  rules are missing or stale. Produce a verification contract, not proof.
- Use **execution mode** when the contract is fixed. Reuse matching evidence
  and execute missing, stale, invalidated, suspicious, or explicitly fresh
  claims.
- Use **independent mode** when consequence, irreversibility, uncertainty, or
  builder bias warrants a fresh context, separately authored oracle, consumer
  evidence, different owner, or another control with permission to reject.
- A builder may run fast inner-loop feedback repeatedly. Do not call it an
  independent final verdict merely because the result is recorded clearly.
- One task may move from strategy to execution only after freezing the claim,
  method, oracle, tolerance, inputs, environment, evidence owner, and validity
  limit. Record any later correction as a contract revision and rerun affected
  evidence; never repair the oracle to fit an observed result.

## Preserve authority and safety

- Preserve upstream claim keys, labels, meaning, scope, and accountable owners.
  Add `VER-*` evidence obligations instead of relabeling product contracts.
- Distinguish intended, specified, implemented, executed, observed, verified,
  released, and accepted states. A passing method proves only its named claim
  under the exercised conditions.
- Respect security, privacy, data handling, environment, and change-management
  requirements. Production traffic, fault injection, destructive tests,
  mutation, external writes, expensive load, and user-affecting experiments
  require authorization, isolation, stop controls, and cleanup.
- Preserve raw output and diagnostic artifacts proportionately. The agent's
  summary supplements evidence; it does not replace it.

## Reuse evidence and identify the target

Invalidate evidence only for changed claims or their exercised code, configuration,
data, method, oracle, or material environment. Prose-only edits normally need document checks;
executable examples, changed requirements, suspect evidence, required repository
gates, and explicitly fresh verification can require runtime checks. Preserve
known failures and omissions when reusing evidence; a skill transition is not
itself a reason to rerun an unaffected suite.

When completion includes a running or installed system, identify the actual
serving process or deployment, revision, configuration, and relevant contract
versions. Exercise the requested consumer path on that target. A clean checkout,
test server, or healthy stale process does not establish the running outcome.
Use the owned restart or deployment path only within existing authority; if
unavailable, report the narrower tested result and unverified runtime claim.

## Design the verification contract

1. **Inventory claims.** Preserve accepted behavior and invariants. Rewrite
   vague confidence goals as falsifiable claims about behavior, contracts,
   data, security, performance, failure, recovery, rollout, or diagnosis.
2. **Classify risk.** Record consequence, uncertainty, exposure, reversibility,
   affected population, and detection or recovery difficulty.
3. **Expose assumptions.** Name material environment, traffic, timing,
   ordering, dependency, identity, clock, failure, operator, and data
   assumptions.
4. **Choose falsifying evidence.** Select the cheapest credible method that can
   disprove each claim. Add layers only for distinct uncertainty or justified
   defense in depth. When runtime evidence is selected, consume named
   `observability-design` signal contracts and define falsification and limits
   without recreating their population, window, missing-data, navigation, or
   routing semantics.
5. **Fix method boundaries and oracles.** State exercised and omitted regions,
   representativeness, pass or fail properties, tolerances, comparison rules,
   invalidation, and renewal. Calibrate consequential semantic judges against
   coherent human labels and held-out cases while preserving genuine unknowns.
6. **Sequence and own the portfolio.** Put fast deterministic feedback early;
   reserve expensive, risky, or production-like evidence for claims that need
   it. Name execution point, evidence owner, location, and remaining gaps.

Read the relevant section of [references/evidence-portfolio.md](references/evidence-portfolio.md)
when method, oracle, coverage, fidelity, or independence is missing or suspect,
or a durable strategy matrix is needed. A fixed sufficient contract proceeds to
execution without a new method survey merely because it crosses a boundary.
Preserve required calibration, negative controls, and fresh evidence obligations.
For agent or tool-system evaluation, use the reference's **Agent and tool-using
systems** section to frame or check the contract. In particular, retention decisions
require trigger negatives and a with-or-without ablation. A fixed contract is not
sufficient merely because its positive output cases pass.

## Execute fixed claims

1. **Ingest and preflight.** Validate claim labels, strategy version, snapshot,
   method, oracle, tools, permissions, fidelity, isolation, duration, stops,
   cleanup, and artifact locations. Mark an incomplete contract for strategy
   repair before observing the candidate.
2. **Establish comparison state.** Capture relevant baseline, candidate,
   configuration, workload, dependency state, time window, and prior evidence.
3. **Execute in feedback order.** Preserve invocation, inputs, environment,
   material times, exit status, and raw results.
4. **Apply the fixed oracle.** Classify each attempt **pass**, **fail**,
   **inconclusive**, or **not run**. A flaky pass, partial environment, invalid
   oracle, missing assertion, clean dynamic run, or absent signal is not
   success.
5. **Preserve counterexamples and boundaries.** Minimize only while failure
   reproduces. Separate product, harness, environment, and oracle failures;
   state which populations, schedules, faults, and runtime modes were absent.
6. **Stop and clean up safely.** Stop on a predefined threshold, unexpected
   blast radius, lost isolation, corrupted baseline, or failed control path.
   Restore temporary state and report cleanup evidence.
7. **Synthesize per claim.** Preserve contradictions, stale or unexecuted
   regions, decisive failures, and validity limits. Green majorities do not
   cancel a failed critical invariant.
8. **Route the owning defect.** Send implementation defects to
   `$scoped-change-implementation`, unexplained causes to
   `$software-failure-diagnosis`, weak contracts back to strategy mode, missing
   runtime signals to `$observability-design`, and missing or unsafe security
   assumptions to `$software-security-design` or their narrower design owner.

Read [references/evidence-execution.md](references/evidence-execution.md) when
execution needs a durable ledger, attempt or counterexample record, non-obvious
method-boundary prompts, or independence calibration.

## Quality gates

- Every material claim traces by key and label to a frozen oracle or explicit
  gap; results retain matching snapshot and environment identity.
- Methods exercise the uncertainty they own and state what they cannot prove.
- Failures, inconclusive results, omitted evidence, flaky attempts, and
  counterexamples remain visible.
- Risky execution respects authorization, isolation, stops, and cleanup.
- Independent claims identify the distinct context, criteria, evidence, owner,
  or rejection right that makes the verdict independent.
- Evidence remains distinct from release, cutover, risk, and support decisions.

## Reject verification theater

- Do not count tests, coverage, dashboards, model reviews, or formal artifacts
  as universal confidence.
- Do not infer dynamic behavior that the workload, population, schedule,
  failure, or instrumentation did not exercise.
- Do not let the same agent's narrative certify that required work occurred.
