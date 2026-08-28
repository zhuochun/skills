---
name: verification-strategy-design
description: Design a risk-proportionate verification strategy for software designs, changes, migrations, and services by matching each claim to falsifying evidence. Use when choosing tests, formal methods, contract checks, simulation, load or failure tests, game days, canaries, shadow traffic, rollout evidence, or production telemetry, including after incidents that expose missing or stale evidence.
---

# Verification Strategy Design

Create an evidence portfolio where every method owns a specific uncertainty. One convenient green signal is not universal confidence.

## Preserve authority and safety

- Design the strategy by default. Do not run load tests, fault injection, production experiments, traffic replay, destructive tests, or external writes without explicit authorization and safeguards.
- Respect security, privacy, data-handling, environment, and change-management requirements.
- Identify decision and evidence owners. Findings inform a decision; they do not approve release.
- Preserve upstream claim keys, labels, and meaning. Add `VER-*` evidence obligations rather than relabeling product contracts; design only missing, stale, renewal, or explicitly independent coverage.

## Strategy workflow

1. **Inventory claims.** Preserve stable claims and rewrite only vague confidence goals as falsifiable claims about design, behavior, contracts, data, performance, failure, recovery, rollout, or diagnosis. Give new claims stable keys and labels; repeat both when cited.
2. **Classify risk.** For each claim, record consequence, likelihood or uncertainty, exposure, reversibility, affected population, and detection/recovery difficulty.
3. **Expose assumptions.** Name environment, traffic, timing, ordering, dependency, identity, clock, failure, operator, and data assumptions that make the claim true.
4. **Choose falsifying evidence.** Select the cheapest credible method that can disprove the claim. Add layers only for distinct uncertainty or justified defense in depth.
5. **State method boundaries.** Record what the method exercises, what it omits, how representative inputs and environments are, and how results can become stale.
6. **Design oracles.** Define observable pass/fail properties, invariants, tolerances, and comparison rules. Avoid tests that merely reproduce implementation steps. Before a semantic judge controls a consequential gate, require a rubric that independent human reviewers can apply coherently. Preserve genuine ambiguity, calibrate on development cases, and test against held-out human labels.
7. **Sequence feedback.** Put fast, deterministic evidence early; reserve expensive, risky, or production-like evidence for claims that need it. Keep diagnostic artifacts when a layer fails.
8. **Consume operational evidence.** Reference named `observability-design` signals for canary, shadow, health, rollback, or incident evidence. Define falsification and limits without recreating signal semantics, navigation, or routing. Production observation does not replace earlier verification.
9. **Close the loop.** Convert counterexamples, escaped defects, incidents, and rollout findings into revised assumptions, regression evidence, runbooks, guardrails, or design changes.

The strategy is a plan, not proof. A claim is verified only after named evidence runs or is observed in the specified environment and is adjudicated against its oracle. Preserve the executor handoff and remaining evidence gaps.

Read [references/evidence-portfolio.md](references/evidence-portfolio.md) when designing evidence for an agent or tool-using system or a semantic judge. Also read it when method selection is non-obvious, cross-boundary or failure-recovery prompts are needed, or a formal strategy matrix is required.

## Quality gates

- Methods map to named claims and risks without replacing upstream contracts; claims trace by key and label to an oracle or documented gap.
- Consumer semantics get cross-boundary evidence. When failure or recovery risk includes operator or control-path behavior, require corresponding evidence.
- Remaining unverified scope is explicit.
- Feedback and maintenance are proportionate.
- Evidence has owner, execution point, location, and renewal trigger.

## Reject verification theater

- Do not apply every method to every change or count test volume as coverage. Formal models do not prove implementations or environments; unit tests do not prove consumers or partial failures.
- Production canaries do not guarantee rare paths, and monitoring is not proactive correctness.
- Invalidate evidence after material architecture, traffic, dependency, or operating change.
