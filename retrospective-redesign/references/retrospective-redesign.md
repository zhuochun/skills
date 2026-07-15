# Retrospective redesign review

Use this reference to structure an ambiguous or consequential retrospective. It supports the analysis; it is not a handoff artifact that users must maintain.

## Evidence record

Keep evidence compact and distinguish what is known from what is inferred.

| Learned requirement or constraint | Evidence | Observed, inferred, or unknown | Current design choice | Still justified? |
| --- | --- | --- | --- | --- |

Useful evidence includes:

- original and final requirements, accepted decisions, and supported environments;
- current behavior, implementation, tests, public interfaces, and runtime discovery paths;
- operational failures, performance evidence, user feedback, support cases, and real edge conditions;
- change history, domain language, ownership, and operating constraints.

Rewrite implementation-shaped observations as requirements. For example, replace "`ReaderService` retains the active snapshot" with "readers observe one complete committed snapshot, including during refresh failures."

Treat code as removable only when no required contract, production consumer, runtime discovery path, or supported operational use depends on it. Tests alone prove neither that code is live nor that it is dead.

## Route comparison

| Route | Use when | Required reasoning | Typical follow-up |
| --- | --- | --- | --- |
| **Prune** | Essential ownership, interfaces, state, and flow converge with the target | Demonstrate that dead paths, duplicate representations, pass-through structure, speculative hooks, or obsolete compatibility protect no required behavior | Scoped implementation plus proportionate repository verification; use `$verification-strategy-design` when the behavior claim needs an explicit evidence portfolio |
| **Reshape** | Goals converge but bounded ownership, interfaces, state, or flow differ | Identify stable seams, incremental slices, compatibility needs, and temporary complexity | `$deep-module-design` or `$service-boundary-design`; add `$high-risk-change-planning` when migration states or irreversible effects matter |
| **Rebuild** | The foundational model or flow differs and adaptation would preserve excessive accidental complexity | Compare replacement economics, dual-system cost, equivalence proof, cutover, rollback or fail-forward, and retained complexity | Fresh `$architecture-risk-evaluation`, `$technical-decision-making` where closure is contested, `$high-risk-change-planning`, and `$verification-strategy-design`; add `$controlled-release-design` when exposure must be governed |

Local exceptions may be reported without changing the primary route. Do not recommend rebuild merely because it offers a cleaner diagram.

## Consequence routing

Treat these as indicators for stronger independent challenge and verification, not automatic gates:

- public-contract or support-policy change;
- durable-data migration or changed data authority;
- cross-service or cross-team coordination;
- security, privacy, compliance, or financial effect;
- large blast radius or irreversible behavior;
- material operating-model, ownership, or on-call change.

The redesign pass may use `$architecture-risk-evaluation` as a thinking lens. A consequential claim still benefits from a fresh evaluation context that is not required to defend the proposed target. The accountable human decides whether the evidence is sufficient and owns accepted residual risk.

Route additional gaps by their actual type:

- domain meaning or invariant gap → `$domain-modeling`;
- module ownership, interface, or state gap → `$deep-module-design`;
- deployable, data, failure, or team boundary gap → `$service-boundary-design`;
- systemic quality or assumption risk → `$architecture-risk-evaluation`;
- contested alternative or risk acceptance → `$technical-decision-making`;
- risky migration or cutover → `$high-risk-change-planning`;
- feature exposure, cohorts, promotion, or kill controls → `$controlled-release-design`;
- missing prospective telemetry contract → `$observability-design`;
- missing claim, oracle, or evidence portfolio → `$verification-strategy-design`.

## Report format

1. **Scale, verdict, and confidence** — module, service, system, or estate; prune, reshape, or rebuild; confidence and decisive uncertainty.
2. **Learned requirements** — outcomes, invariants, supported behavior, real failure modes, constraints, and disproven assumptions.
3. **First-principles target** — responsibility and state ownership, interfaces, flow, failures, unsupported behavior, and test seams.
4. **Current comparison** — convergence, removable fat, structural divergence, useful discoveries, and disputed hardening.
5. **Route rationale** — migration economics, behavioral risk, evidence burden, reversibility, temporary complexity, and expected structural reduction.
6. **Decision and evidence needs** — accountable owner, independent challenge, verification execution, unknowns, and residual risk.
7. **Selected follow-up skills** — only the branches required by the actual gaps and consequence.

Measure structural reduction using concepts, owners, interfaces, states, branches, representations, modules, and test seams. Treat line-count reduction as secondary evidence.
