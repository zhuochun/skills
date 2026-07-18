---
name: architecture-consolidation-review
description: Review a completed software capability or system after implementation, repeated change, or representative operation has produced material architectural learning. Use for architecture consolidation, retrospective redesign, post-implementation simplification, a "build it again knowing what we know now" review, or an evidence-backed decision to retain, quarantine, prune, reshape, or rebuild. Establish the knowledge delta before reconsidering structure, preserve durable commitments and support policy, compare the current design as a competent baseline, and route follow-up without modifying the target system. Do not use merely to improve a weak first design pass, review a routine implementation, or execute an already-decided refactor.
---

# Architecture Consolidation Review

Consolidate what the system has taught after real work has changed what is known. Reconsider inherited structure without discarding learned commitments, presupposing redesign, or rewarding novelty for its own sake.

## Require a material knowledge delta

- Establish what implementation, repeated change, production behavior, incidents, support work, or ownership experience revealed that was uncertain or unknowable during the original design.
- Stop and route elsewhere when no material knowledge delta exists. Use `$architecture-risk-evaluation` to challenge a proposed design, `$code-review` to review an implementation, `$deep-module-design` for a known module-design question, and `$behavior-preserving-refactoring` when the structural target is already accepted.
- Do not use a second context or retrospective framing as a generic remedy for a weak first agent pass. Independent evaluation requires distinct criteria, evidence, and permission to reject—not merely another attempt.
- Activate after representative learning, not automatically after every feature, incident, or release.

## Preserve authority

- Work read-only against the target system. Do not change implementation, configuration, infrastructure, data, interfaces, or operating procedures.
- Produce a recommendation, not approval, implementation, or equivalence certification. Identify the accountable human owner for support policy, route selection, cutover, and residual risk.
- Treat current structure as a design candidate rather than the assumed solution. Treat current behavior, history, constraints, and operational adaptations as evidence that must be reconciled.
- Under a compatibility-preserving request, treat reachable observed behavior as a provisional commitment until evidence or the accountable owner explicitly classifies it otherwise. Omission is not a support-policy decision.
- Separate observed evidence, interpretation, and unknowns. Do not turn missing documentation, tests, telemetry, or consumer inventory into permission to simplify.

## Select scale and design lenses

Resolve the scale before deriving a target. Use the smallest sufficient set of lenses.

- **Module or capability:** Load and use `$deep-module-design` for interface depth, state ownership, seams, behavior, and testability.
- **Service or subsystem:** Use `$deep-module-design` for internals and `$service-boundary-design` when deployable, data, failure, or ownership boundaries are in question. Use `$architecture-risk-evaluation` for consequential quality claims.
- **Multi-service system or wider estate:** Use `$architecture-risk-evaluation` for systemic scenarios and tradeoffs, `$service-boundary-design` for disputed boundaries, and `$technical-decision-making` when alternatives or risk acceptance require accountable closure.

Propose the scale and consequence classification. Let the accountable human confirm, narrow, or override them.

## Consolidation review workflow

1. **Frame the consolidation question.** Name the completed slice, the material knowledge delta, why consolidation is useful now, its expected remaining lifetime, the decision owner, the change horizon, and the behavior and ownership paths in scope. Do not expand from a capability question into a repository or estate review without evidence that the learning crosses those boundaries.
2. **Diagnose the pressure.** Identify the work actually consuming change time, rework, incidents, support effort, or understanding. Classify it as essential conceptual work, current contextual constraint, transitional complexity, accidental structural or workflow friction, or a mixture. If no durable pressure or learning is demonstrated, stop rather than manufacturing a redesign.
3. **Recover learning across three surfaces.** Inspect code and structure, shared team understanding, and preserved intent. Use requirements, decisions, tests, change history, repeated workarounds, domain language, operational evidence, incidents, user feedback, support constraints, and current ownership. Stop when more archaeology is unlikely to change the commitment set, alternatives, or route.
4. **Externalize durable commitments.** Record outcomes, invariants, public and operational contracts, support policy, failure semantics, real consumer behavior, and validation methods that must survive structural change. Reconcile declared, tested, observed, and inferred behavior. Mark each relevant behavior **preserve**, **propose for explicit retirement**, or **unresolved**; never let a target silently drop it.
5. **Interpret what the learning means.** Distinguish stable variation from premature abstraction, domain-model friction from local code mess, different change rates from arbitrary package boundaries, legitimate distinctions from duplication, and adaptive operational workarounds from accidental complexity. Identify which learning belongs in names, boundaries, tests, defaults, rationale, or a deliberately bounded quarantine.
6. **Generate and compare design candidates.** Always include the current design or a minimally consolidated version as a competent baseline. When the model or boundary is disputed, compare materially different candidates against difficult workflows, commitments, change locality, meaning search, failure behavior, operating cost, reversibility, migration economics, and the code/understanding/intent debt each would leave behind.
7. **Recommend the smallest justified route.** Choose **retain** when the current design remains sound or change would not repay its cost; **quarantine** when valuable disorder should be bounded before deeper repair; **prune** when the learned architecture already converges and obsolete surface can retire; **reshape** when ownership, model, state, interfaces, or flow need bounded change; or **rebuild** only when the foundational model differs, adapting would retain more accidental complexity, and enough durable commitments exist to judge a replacement.
8. **Route follow-up work.** Name only the focused design, decision, transition, release, observability, and verification skills required by the selected route. For consequential reshape or rebuild, require a fresh evaluation context with distinct evidence and executed verification before cutover; do not let the consolidation review certify its own candidate.
9. **Report the recommendation.** Lead with scale, route, confidence, and decisive uncertainty. Report the pressure diagnosis, learned commitments, candidate comparison, current convergence and divergence, route economics, structural learning to encode, explicit support-policy decisions, evidence gaps, accountable owner, and selected follow-up skills.

Read [references/architecture-consolidation-review.md](references/architecture-consolidation-review.md) for the knowledge-derived reasoning model, commitment ledger, route comparison, and report form.

## Quality gates

- A material knowledge delta from implementation, repeated change, operation, support, or ownership justifies the review.
- Essential conceptual work and accidental friction are distinguished without false precision.
- Code, shared understanding, preserved intent, and operational learning are all considered in proportion to scope.
- Declared, tested, observed, and inferred commitments are reconciled; every material difference has an explicit disposition.
- The current or minimally consolidated design is compared as a real alternative, not used as a straw man.
- The recommendation explains economics, reversibility, proof burden, uncertainty, and what learned structure it would encode.
- Rebuild is not recommended while the old implementation remains the only source of truth for important commitments.
- The result names accountable decisions and follow-up skills while leaving the target system unchanged.

## Reject weak consolidation reviews

- Do not use retrospective framing to compensate for a weak first pass, ordinary review, or missing independent evaluation.
- Do not recommend change from age, language, framework, aesthetics, line count, or generic doctrine.
- Do not mistake a cleaner representation for a better answer to unresolved domain meaning.
- Do not merge or delete distinctions merely because they look duplicated; compare purpose, invariants, consumers, and change pressure.
- Do not hide behavior, compatibility, or support-policy changes inside a structural recommendation.
- Do not preserve every historical behavior as permanent policy; surface disputed behavior for an accountable decision.
- Do not call documentation alone consolidation when repeated knowledge could become structure, tests, defaults, or enforceable boundaries.
- Do not rebuild from an unconstrained clean slate when commitments, oracles, or migration evidence are missing.
- Do not let evidence gathering become exhaustive archaeology or the report become a substitute for the next decision.
