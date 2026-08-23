---
name: software-failure-diagnosis
description: Diagnose bugs, regressions, intermittent failures, incorrect results, crashes, and performance degradation by turning symptoms into discriminating evidence and a supported cause. Use first whenever a newly reported symptom remains unexplained, even when the user also authorizes a fix. After causal support, route the bounded repair to scoped-change-implementation.
---

# Software Failure Diagnosis

Reduce uncertainty before changing behavior. Build the smallest safe evidence loop that can distinguish plausible causes, while accepting that some distributed, temporal, or production-only failures cannot be perfectly reproduced locally.

## Preserve diagnostic integrity and authority

- For diagnosis requests, preserve supported behavior. Run non-mutating checks and create no lasting target changes without authorization.
- If the user reports a new symptom and also authorizes a fix, keep diagnosis primary until the cause is supported. Authorization permits a later repair; it does not make the failure a diagnosed fix. Then route the bounded repair to `$scoped-change-implementation`.
- Preserve symptoms, times, environment, versions, inputs, impact, and negative evidence before retries, restarts, or instrumentation overwrite them.
- Respect privacy, secrets, production safety, retention, and access controls. Require explicit authorization for temporary instrumentation, traffic replay, production queries, fault injection, or state mutation, and remove diagnostic changes afterward.
- Separate observed facts, interpretation, hypotheses, and unknowns. State confidence rather than presenting the first plausible story as root cause.

## Diagnosis workflow

1. **Define the symptom.** Record expected and observed behavior, population, timing, frequency, environment, version, trigger, impact, and reproduction or resolution criteria. Distinguish defect, unsupported usage, and unclear contract.
2. **Preserve and orient.** Capture logs, traces, errors, screenshots, profiles, dumps, request identifiers, configuration, dependency state, and recent relevant changes. Trace the owning path through entry point, decisions, state, effects, and observable result before collecting broad new telemetry.
3. **Build the tightest safe loop.** Prefer reproduction through a supported seam. Minimize without removing the mechanism. Amplify intermittent failures with repetition, controlled scheduling, stress, seeds, or replay. For production-only cases, use bounded observation and comparison; local non-reproduction disproves nothing.
4. **Establish comparison and timeline.** Compare good and bad versions, requests, hosts, cohorts, configurations, data, dependency paths, or time windows. Reconstruct relevant state transitions and causal order; wall-clock proximity alone is not causation in concurrent or distributed systems.
5. **Write competing hypotheses.** Rank a small explanatory set. For each, state a discriminating prediction, evidence for and against, and cheapest safe rank-changing observation. Include environment, data, dependency, concurrency, configuration, and observer effects when plausible.
6. **Choose the measurement view by question.** Use logs for discrete decisions, traces for causal paths, state diffs for transition errors, profiles for resource attribution, execution timelines for scheduling or blocking, distributions for tails, and outside-in probes for caller-visible latency. Do not optimize the largest visible frame without connecting it to the symptom.
7. **Test one discrimination at a time.** Prefer debugger or direct state inspection, targeted instrumentation, bisection, differential execution, controlled replay, or focused experiments over broad logging. Record how the result updates each hypothesis. Watch for instrumentation, retries, caches, or timing changes that hide or create the failure.
8. **Explain causality.** Identify initiating condition, faulty mechanism, enabling conditions, and propagation to impact. State distinguishing evidence, uncertainty, and generalization limits.
9. **Make the failure durable.** Preserve the smallest faithful reproduction, failing input, seed, trace, profile, or query that future work can run. If no durable reproduction is possible, preserve the observation recipe, required environment, confidence limits, and evidence still needed.
10. **Route action without broadening scope.** If a fix is authorized, hand the cause, counterevidence, supported contract, and regression seam to `$scoped-change-implementation`. Route missing seams to `$deep-module-design`, absent telemetry to `$observability-design`, broader operational learning to `$incident-learning`, and systemic architecture assumptions to the appropriate evaluation skill.

Read [references/diagnosis-record.md](references/diagnosis-record.md) only when the investigation needs a durable symptom, hypothesis, or causal record, or non-obvious evidence-loop selection.

## Quality gates

- Expected and observed behavior can disagree through named evidence; original context is preserved proportionately.
- When good and bad behavior diverge across several components or state transitions, include the smallest self-contained text comparison of causal paths and order. Mark observed, inferred, and unresolved elements; richer rendering is optional.
- Hypotheses are falsifiable, compared with discriminating observations, and measured for the causal question.
- The supported cause explains trigger, mechanism, enabling conditions, and propagation.
- Counterevidence and uncertainty remain visible.
- A durable reproduction or observation recipe can test repair.
- Diagnosis-only work stops before implementation.

## Reject weak diagnosis

- Correlation, recent change, frames, logs, or hot functions are not root cause.
- Preserve temporal, distributed, data, or production mechanisms even when reproduction stays rich; local failure to reproduce is not disproof.
- Ask what the next observation answers before collecting broad telemetry.
- Change one discriminating variable at a time.
- Retries, timeouts, catch-alls, cache flushes, or restarts are not explanations.
- Remove temporary or sensitive diagnostic state on schedule.
