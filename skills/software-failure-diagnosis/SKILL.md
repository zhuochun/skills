---
name: software-failure-diagnosis
description: Diagnose software bugs, regressions, intermittent failures, incorrect results, crashes, and performance degradation by turning symptoms into discriminating evidence and a causal explanation with explicit confidence. Use when something is broken, failing, flaky, unexpectedly slow, environment-dependent, production-only, or not yet understood well enough to fix. Default to diagnosis without changing supported behavior; when repair is explicitly authorized, route the supported cause and reproduction to scoped-change-implementation.
---

# Software Failure Diagnosis

Reduce uncertainty before changing behavior. Build the smallest safe evidence loop that can distinguish plausible causes, while accepting that some distributed, temporal, or production-only failures cannot be perfectly reproduced locally.

## Preserve diagnostic integrity and authority

- For diagnose, investigate, explain, or root-cause requests, remain read-only against supported behavior. Run relevant non-mutating commands and create no lasting target changes unless explicitly authorized.
- If the user also authorizes a fix, complete the causal diagnosis first, then route the bounded repair to `$scoped-change-implementation`. Do not let a plausible patch substitute for understanding the failure.
- Preserve original symptoms, timestamps, environment, versions, inputs, user impact, and negative evidence before they are overwritten by retries, restarts, or instrumentation.
- Respect privacy, secrets, production safety, retention, and access controls. Require explicit authorization for temporary instrumentation, traffic replay, production queries, fault injection, or state mutation, and remove diagnostic changes afterward.
- Separate observed facts, interpretation, hypotheses, and unknowns. State confidence rather than presenting the first plausible story as root cause.

## Diagnosis workflow

1. **Define the symptom contract.** Record expected and observed behavior, affected population, first and last known occurrence, frequency, environment, version, trigger, impact, and what would count as reproduction or resolution. Distinguish a product defect from unsupported usage or an unclear contract.
2. **Preserve and orient.** Capture logs, traces, errors, screenshots, profiles, dumps, request identifiers, configuration, dependency state, and recent relevant changes. Trace the owning path through entry point, decisions, state, effects, and observable result before collecting broad new telemetry.
3. **Build the tightest safe evidence loop available.** Prefer an executable reproduction through a supported seam. Minimize inputs and dependencies without removing the failure mechanism. For intermittent behavior, amplify the occurrence with repeated runs, controlled scheduling, stress, fixed seeds, or captured replay. For production-only failures, use bounded observation and comparison rather than pretending local non-reproduction disproves the report.
4. **Establish comparison and timeline.** Compare good and bad versions, requests, hosts, cohorts, configurations, data, dependency paths, or time windows. Reconstruct relevant state transitions and causal order; wall-clock proximity alone is not causation in concurrent or distributed systems.
5. **Write competing hypotheses.** Produce a small ranked set that collectively explains the evidence. For each, state a discriminating prediction, evidence for and against, and the cheapest safe observation that would change its rank. Include environment, data, dependency, concurrency, configuration, and observer-effect explanations when plausible.
6. **Choose the measurement view by question.** Use logs for discrete decisions, traces for causal paths, state diffs for transition errors, profiles for resource attribution, execution timelines for scheduling or blocking, distributions for tails, and outside-in probes for caller-visible latency. Do not optimize the largest visible frame without connecting it to the symptom.
7. **Test one discrimination at a time.** Prefer debugger or direct state inspection, targeted instrumentation, bisection, differential execution, controlled replay, or focused experiments over broad logging. Record how the result updates each hypothesis. Watch for instrumentation, retries, caches, or timing changes that hide or create the failure.
8. **Form the causal explanation.** Identify the initiating condition, faulty mechanism, enabling conditions, and propagation path to the observed impact. State evidence that distinguishes the supported cause from nearby alternatives, remaining uncertainty, and whether the explanation generalizes beyond the reproduced case.
9. **Make the failure durable.** Preserve the smallest faithful reproduction, failing input, seed, trace, profile, or query that future work can run. If no durable reproduction is possible, preserve the observation recipe, required environment, confidence limits, and evidence still needed.
10. **Route action without broadening scope.** If a fix is authorized, hand the cause, counterevidence, supported contract, and regression seam to `$scoped-change-implementation`. Route missing seams to `$deep-module-design`, absent telemetry to `$observability-design`, broader operational learning to `$incident-learning`, and systemic architecture assumptions to the appropriate evaluation skill.

Use [references/diagnosis-record.md](references/diagnosis-record.md) for the knowledge-derived causal model, hypothesis table, evidence-loop choices, and diagnosis report.

## Quality gates

- Expected and observed behavior are precise enough to disagree mechanically or through named evidence.
- The investigation preserves the original environment and symptom in proportion to consequence.
- Hypotheses are falsifiable and evaluated against discriminating observations.
- Measurements match the causal question rather than tool familiarity.
- The supported cause explains the trigger, mechanism, enabling conditions, and propagation to impact.
- Counterevidence and unresolved uncertainty remain visible.
- A reproduction or durable observation recipe can evaluate a future repair.
- Diagnosis-only work stops without silently implementing a fix.

## Reject weak diagnosis

- Do not jump from correlation, recent change, stack frame, log line, or hot function directly to root cause.
- Do not demand a tiny deterministic reproduction when preserving the temporal, distributed, data, or production mechanism requires a richer case.
- Do not treat inability to reproduce locally as evidence that the user-visible failure did not occur.
- Do not collect every log or metric before stating the question the next observation must answer.
- Do not change several variables at once and claim the successful combination identifies the cause.
- Do not fix the symptom by retry, timeout increase, catch-all handling, cache flush, or restart without explaining what failed and what risk remains.
- Do not retain temporary instrumentation, sensitive captures, or diagnostic state beyond its authorized lifecycle.
