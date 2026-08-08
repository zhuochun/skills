---
name: retrospective-architecture-review
description: Reconsider one completed software design after implementation, repeated change, operation, incidents, support, or ownership creates a material knowledge delta. Recover commitments, compare alternatives, and recommend retain, quarantine, prune, reshape, or rebuild without modification. Exclude portfolio discovery, routine implementation review, weak first design passes, and already-decided refactors; use architecture-assessment for broad investment ranking.
---

# Retrospective Architecture Review

Reconsider one selected design after real work has materially changed what is known. Consolidate what the system taught without discarding learned commitments, presupposing redesign, or rewarding novelty for its own sake.

## Require a material knowledge delta

- Own route selection for one completed design, not portfolio discovery. Use `$architecture-assessment` to rank investment across a wider scope.
- Establish what implementation, change, production, incidents, support, or ownership revealed that was uncertain during design.
- Without a material delta, stop or route proposed designs to `$architecture-risk-evaluation`, implementations to `$code-review`, known module questions to `$deep-module-design`, and accepted refactors to `$behavior-preserving-refactoring`.
- A second context is not automatically independent evaluation; it needs distinct criteria, evidence, and permission to reject.
- Activate after representative learning, not automatically after every feature, incident, or release.

## Preserve authority

- Work read-only against the target system. Do not change implementation, configuration, infrastructure, data, interfaces, or operating procedures.
- Recommend; do not approve, implement, or certify equivalence. Identify owners for support policy, route, cutover, and residual risk.
- Treat current structure as a design candidate rather than the assumed solution. Treat current behavior, history, constraints, and operational adaptations as evidence that must be reconciled.
- Under compatibility preservation, treat reachable observed behavior as provisional commitment until evidence or its owner classifies it otherwise.
- Separate observed evidence, interpretation, and unknowns. Do not turn missing documentation, tests, telemetry, or consumer inventory into permission to simplify.

## Select scale and design lenses

Resolve the selected review unit and its scale before deriving a target. Use the smallest sufficient set of lenses. Do not widen a capability review into a codebase improvement portfolio unless the knowledge delta itself crosses those boundaries and the accountable owner accepts the wider decision surface.

- **Module or capability:** Apply the review directly to interface depth, state ownership, seams, behavior, and testability. Compose with `$deep-module-design` only when a separate module-design judgment is needed.
- **Service or subsystem:** Apply the review directly to internals and learned deployment, data, failure, and ownership consequences. Compose with `$deep-module-design`, `$service-boundary-design`, or `$architecture-risk-evaluation` only for unresolved specialist judgments in those areas.
- **Multi-service system or wider estate:** Apply the review directly to learned systemic scenarios and tradeoffs. Compose with `$architecture-risk-evaluation`, `$service-boundary-design`, or `$decision-facilitation` only when separate specialist judgment or accountable closure is needed.

Propose the scale and consequence classification. Let the accountable human confirm, narrow, or override them.

## Retrospective review workflow

1. **Frame the question.** Name the completed capability, knowledge delta, reason to reconsider, remaining lifetime, decision owner, horizon, and in-scope behavior and ownership paths. Widen scope only when learning crosses the boundary.
2. **Diagnose the pressure.** Identify the work actually consuming change time, rework, incidents, support effort, or understanding inside the selected design. Classify it as essential conceptual work, current contextual constraint, transitional complexity, accidental structural or workflow friction, or a mixture. If no durable pressure or learning is demonstrated, stop rather than manufacturing a redesign or ranking a general improvement portfolio.
3. **Recover learning across three surfaces.** Inspect code and structure, team understanding, and preserved intent using requirements, decisions, tests, history, workarounds, domain language, operations, incidents, feedback, support, and ownership. Stop when more archaeology will not change commitments, alternatives, or route.
4. **Externalize commitments.** Record outcomes, invariants, contracts, support policy, failure semantics, consumer behavior, and validation methods. Reconcile declared, tested, observed, and inferred behavior; mark each **preserve**, **propose for explicit retirement**, or **unresolved**.
5. **Interpret what the learning means.** Distinguish stable variation from premature abstraction, domain-model friction from local code mess, different change rates from arbitrary package boundaries, legitimate distinctions from duplication, and adaptive operational workarounds from accidental complexity. Identify which learning belongs in names, boundaries, tests, defaults, rationale, or a deliberately bounded quarantine.
6. **Compare candidates.** Include the current or minimally consolidated design as a competent baseline. Compare materially different options against difficult workflows, commitments, change locality, meaning search, failures, operating cost, reversibility, migration economics, and remaining code, understanding, and intent debt.
7. **Recommend the smallest justified route.** Choose **retain** when the current design remains sound or change would not repay its cost; **quarantine** when valuable disorder should be bounded before deeper repair; **prune** when the learned architecture already converges and obsolete surface can retire; **reshape** when ownership, model, state, interfaces, or flow need bounded change; or **rebuild** only when the foundational model differs, adapting would retain more accidental complexity, and enough durable commitments exist to judge a replacement.
8. **Route follow-up work.** Name only the focused design, decision, transition, release, observability, and verification skills required by the selected route. For consequential reshape or rebuild, require a fresh evaluation context with distinct evidence and executed verification before cutover; do not let the retrospective review certify its own candidate.
9. **Report the recommendation.** Lead with scale, route, confidence, and decisive uncertainty. Report the pressure diagnosis, learned commitments, candidate comparison, current convergence and divergence, route economics, structural learning to encode, explicit support-policy decisions, evidence gaps, accountable owner, and selected follow-up skills.

Read [references/retrospective-architecture-review.md](references/retrospective-architecture-review.md) only when building a commitment ledger, comparing candidates or routes, or producing a durable report.

## Quality gates

- A material knowledge delta justifies review of one completed design.
- Conceptual work and accidental friction are distinguished; code, understanding, intent, and operations are proportionately considered.
- Declared, tested, observed, and inferred commitments are reconciled with explicit dispositions.
- The current design is a real alternative; the recommendation explains economics, reversibility, proof, uncertainty, and learned structure.
- Rebuild waits until important commitments have another source of truth.
- Accountable decisions and follow-up are named; the target remains unchanged.

## Reject weak retrospective reviews

- Do not use retrospective framing for a weak first pass, ordinary review, or portfolio assessment.
- Do not recommend change from age, language, framework, aesthetics, line count, or doctrine.
- Do not mistake cleaner representation for resolved meaning, or merge distinctions without comparing purpose, invariants, consumers, and pressure.
- Do not hide behavior or support-policy changes, nor preserve history without an accountable decision.
- Documentation alone is not consolidation when knowledge can become structure, tests, defaults, or boundaries.
- Do not rebuild without commitments, oracles, or migration evidence, or let archaeology replace the next decision.
