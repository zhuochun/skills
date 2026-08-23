---
name: retrospective-architecture-review
description: Reconsider one completed software design after implementation, repeated change, operation, incidents, support, or ownership creates a material knowledge delta. Recover commitments, compare alternatives, and recommend retain, quarantine, prune, reshape, or rebuild without modification. Exclude portfolio discovery, routine implementation review, weak first design passes, and already-decided refactors; use architecture-assessment for broad investment ranking.
---

# Retrospective Architecture Review

Reconsider one selected design after real work materially changes what is known. Consolidate learning without discarding commitments or presupposing redesign.

## Require a material knowledge delta

- Own route selection for one completed design, not portfolio discovery. Use `$architecture-assessment` to rank investment across a wider scope.
- Establish what implementation, change, production, incidents, support, or ownership revealed that was uncertain during design.
- Without a material delta, stop or route proposals to `$architecture-risk-evaluation`, implementations to `$code-review`, module questions to `$deep-module-design`, and accepted refactors to `$behavior-preserving-refactoring`.
- A second context is not automatically independent evaluation; it needs distinct criteria, evidence, and permission to reject.
- Activate after representative learning, not automatically after every feature, incident, or release.

## Preserve authority

- Work read-only against the target system. Do not change implementation, configuration, infrastructure, data, interfaces, or operating procedures.
- Recommend; do not approve, implement, or certify equivalence. Identify owners for support policy, route, cutover, and residual risk.
- Treat current structure as a candidate and current behavior, history, constraints, and adaptations as evidence to reconcile.
- Under compatibility preservation, treat reachable observed behavior as provisional commitment until evidence or its owner classifies it otherwise.
- Separate observed evidence, interpretation, and unknowns. Do not turn missing documentation, tests, telemetry, or consumer inventory into permission to simplify.

## Select scale and design lenses

Resolve review unit and scale before deriving a target. Use the smallest sufficient lenses; widen only when learning crosses the boundary and the owner accepts the larger decision surface.

- **Module or capability:** Review interface depth, state ownership, seams, behavior, and testability; compose `$deep-module-design` only for a separate judgment.
- **Service or subsystem:** Review internals and learned deployment, data, failure, and ownership consequences; compose `$deep-module-design`, `$service-boundary-design`, or `$architecture-risk-evaluation` only for unresolved specialist judgments.
- **Multi-service system or estate:** Review systemic scenarios and tradeoffs; compose `$architecture-risk-evaluation`, `$service-boundary-design`, or `$decision-facilitation` only for separate judgment or closure.

Propose the scale and consequence classification. Let the accountable human confirm, narrow, or override them.

## Retrospective review workflow

1. **Frame the question.** Name the completed capability, knowledge delta, reason to reconsider, remaining lifetime, decision owner, horizon, and in-scope behavior and ownership paths. Widen scope only when learning crosses the boundary.
2. **Diagnose pressure.** Find work consuming change time, rework, incidents, support, or understanding. Classify essential concepts, current constraints, transition, and accidental friction. Without durable pressure or learning, stop.
3. **Recover learning.** Inspect code/structure, team understanding, and preserved intent through requirements, decisions, tests, history, workarounds, operations, incidents, support, and ownership. Stop when archaeology cannot change commitments, alternatives, or route.
4. **Externalize commitments.** Record outcomes, invariants, contracts, support policy, failure semantics, consumer behavior, and validation methods. Reconcile declared, tested, observed, and inferred behavior; mark each **preserve**, **propose for explicit retirement**, or **unresolved**.
5. **Interpret learning.** Distinguish stable variation from premature abstraction, domain friction from local mess, change rates from arbitrary boundaries, legitimate distinctions from duplication, and adaptation from accidental complexity. Place learning in names, boundaries, tests, defaults, rationale, or quarantine.
6. **Compare candidates.** Include the current or minimally consolidated design as a competent baseline and the simplest credible lower-complexity counterfactual. When an optional mechanism carries ongoing code, operational, cognitive, or proof cost but has no demonstrated contribution to the intended outcome, explicitly compare retaining it with disabling, quarantining, or removing it. Absence of reported failure proves neither benefit nor uselessness; identify the exposure, observation, or decision evidence that would separate the options. Compare materially different capabilities, not merely cleaner representations, against difficult workflows, commitments, change locality, meaning search, failures, operating cost, reversibility, migration economics, and remaining code, understanding, and intent debt.
7. **Recommend the smallest justified route.** Choose **retain** when change will not repay its cost, **quarantine** to bound valuable disorder, or **prune** when obsolete surface can retire. Choose **reshape** for bounded ownership, model, state, interface, or flow change. Choose **rebuild** only when the foundational model differs, adaptation retains more accidental complexity, and durable commitments can judge a replacement.
8. **Route follow-up.** Name only required design, decision, transition, release, observability, and verification skills. Consequential reshape or rebuild needs fresh evaluation with distinct evidence and executed verification; this review cannot certify its candidate.
9. **Report the recommendation.** Lead with scale, route, confidence, and decisive uncertainty. Report the pressure diagnosis, learned commitments, candidate comparison, current convergence and divergence, route economics, structural learning to encode, explicit support-policy decisions, evidence gaps, accountable owner, and selected follow-up skills.

Read [references/retrospective-architecture-review.md](references/retrospective-architecture-review.md) only when building a commitment ledger, comparing candidates or routes, or producing a durable report.

## Quality gates

- A material knowledge delta justifies review of one completed design.
- Conceptual work and accidental friction are distinguished; code, understanding, intent, and operations are proportionately considered.
- Declared, tested, observed, and inferred commitments are reconciled with explicit dispositions.
- The current design is a real alternative; the recommendation explains economics, reversibility, proof, uncertainty, and learned structure.
- Materially structural routes require the smallest self-contained text comparison of current baseline and credible candidates. Mark preserved, changed, and unresolved elements; rendering is optional.
- Optional complexity with unproven benefit receives a credible lower-complexity alternative and an evidence burden, without presuming removal.
- Rebuild waits until important commitments have another source of truth.
- Accountable decisions and follow-up are named; the target remains unchanged.

## Reject weak retrospective reviews

- Do not use retrospective framing for a weak first pass, ordinary review, or portfolio assessment.
- Do not recommend change from age, language, framework, aesthetics, line count, or doctrine.
- Do not mistake cleaner representation for resolved meaning, or merge distinctions without comparing purpose, invariants, consumers, and pressure.
- Do not hide behavior or support-policy changes, nor preserve history without an accountable decision.
- Documentation alone is not consolidation when knowledge can become structure, tests, defaults, or boundaries.
- Do not rebuild without commitments, oracles, or migration evidence, or let archaeology replace the next decision.
