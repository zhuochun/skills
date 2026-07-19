---
name: verification-strategy-design
description: Design a risk-proportionate verification strategy for software designs, changes, migrations, and services by matching each engineering claim to evidence capable of falsifying it. Use when choosing tests, formal methods, contract checks, property-based testing, simulation, load tests, failure injection, game days, canaries, shadow traffic, rollout controls, or production telemetry; also use after incidents to identify missing or stale evidence layers.
---

# Verification Strategy Design

Create an evidence portfolio in which every method owns a specific uncertainty. Prevent one convenient green signal from being treated as universal confidence.

## Preserve authority and safety

- Design the strategy by default. Do not run load tests, fault injection, production experiments, traffic replay, destructive tests, or external writes without explicit authorization and safeguards.
- Respect security, privacy, data-handling, environment, and change-management requirements.
- Identify the decision owner and evidence owners. Verification findings inform a decision; they do not silently approve release.
- When upstream work supplies named behavior, invariant, compatibility, transition, or architecture claims, preserve their keys, labels, and meaning. Create `VER-*` entries for evidence obligations rather than relabeling the product contract. Use the active evidence index to design only missing, stale, renewal, or explicitly independent coverage.

## Strategy workflow

1. **Inventory claims.** Consume stable upstream claims and rewrite only vague confidence goals as falsifiable evidence claims about design state, code behavior, consumer contracts, data, performance, failure handling, recovery, rollout, or diagnosis. Give each new verification claim a stable key and plain-language label, such as `VER-ledger-conservation — Ledger value is conserved`; repeat both whenever another artifact cites it.
2. **Classify risk.** For each claim, record consequence, likelihood or uncertainty, exposure, reversibility, affected population, and detection/recovery difficulty.
3. **Expose assumptions.** Name environment, traffic, timing, ordering, dependency, identity, clock, failure, operator, and data assumptions that make the claim true.
4. **Choose falsifying evidence.** Select the cheapest credible method that can disprove the claim. Add layers only when they cover distinct uncertainty or consequence justifies defense in depth.
5. **State method boundaries.** Record what the method exercises, what it omits, how representative inputs and environments are, and how results can become stale.
6. **Design oracles.** Define observable pass/fail properties, invariants, tolerances, and comparison rules. Avoid tests that merely reproduce implementation steps.
7. **Sequence feedback.** Put fast, deterministic evidence early; reserve expensive, risky, or production-like evidence for claims that need it. Keep diagnostic artifacts when a layer fails.
8. **Consume operational evidence contracts.** Reference named signals from `observability-design` when canary, shadow, health, rollback, or incident evidence is needed. Define how that evidence falsifies a claim and its limits, but do not recreate signal semantics, dashboard navigation, or alert routing. Never treat production observation as a substitute for earlier verification.
9. **Close the loop.** Convert counterexamples, escaped defects, incidents, and rollout findings into revised assumptions, regression evidence, runbooks, guardrails, or design changes.

The strategy is a plan, not proof. Do not report a claim as verified until the named evidence has been executed or observed in the specified environment and adjudicated against its oracle. Preserve the executor handoff and remaining evidence gaps.

Use [references/evidence-portfolio.md](references/evidence-portfolio.md) for method selection and the strategy matrix.

## Quality gates

- Every required method maps to a named claim and risk without replacing the upstream behavior contract.
- Every claim reference includes a plain-language label and traces to its owning strategy entry.
- Every claim has an explicit oracle or a documented evidence gap.
- Consumer-visible semantics receive cross-boundary evidence.
- Failure and recovery claims include operator and control-path behavior where relevant.
- The strategy states what remains unverified.
- Feedback time and maintenance cost are proportionate to consequence and reversibility.
- Evidence has an owner, execution point, artifact location, and renewal trigger.

## Reject verification theater

- Do not require every change to pass every method.
- Do not count test volume as risk coverage.
- Do not claim a formal model proves its implementation or environment.
- Do not claim unit tests prove consumer compatibility or partial-failure behavior.
- Do not claim canaries cover rare paths merely because production traffic was used.
- Do not call monitoring a proactive correctness test.
- Do not retain stale evidence after architecture, traffic, dependencies, or operating procedures change.
