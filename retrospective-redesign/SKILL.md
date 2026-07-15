---
name: retrospective-redesign
description: Reconsider a completed software capability or system from first principles using implementation and operational learning. Use for retrospective redesign, post-implementation simplification, dead-code or complexity-reduction analysis, a "build it again knowing what we know now" review, or a decision between pruning, reshaping, and rebuilding. Resolve the applicable scale and design lenses, treat the current implementation as evidence rather than the assumed solution, compare a learned target with the current design, and recommend an evidence-backed route without changing the implementation.
---

# Retrospective Redesign

Retain the lessons; re-justify the structure. Derive the design that would have been chosen if current learning had been available at the start, then compare it with the implementation that exists.

## Preserve authority

- Work read-only against the target system. Do not change implementation, configuration, infrastructure, data, interfaces, or operating procedures as part of this skill.
- Produce a redesign recommendation, not approval or equivalence certification. Identify the accountable human decision owner for the route, cutover, and residual risk.
- Separate observed evidence, interpretation, and unknowns. Do not invent requirements or preserve behavior merely because code exists for it.
- Treat implementation, migration, and verification execution as follow-up work with their own authority and evidence.

## Select redesign scale and lenses

Resolve the scale before deriving the target. Use the smallest sufficient set of lenses rather than stacking every related skill.

- **Module or capability:** Load and use `$deep-module-design` for interface depth, state ownership, seams, local behavior, and testability.
- **Service or subsystem:** Use `$deep-module-design` for internals and load `$service-boundary-design` when deployable, data, failure, or ownership boundaries are in question. Use `$architecture-risk-evaluation` for consequential quality claims.
- **Multi-service system or wider estate:** Load and use `$architecture-risk-evaluation` for systemic scenarios and tradeoffs. Use `$service-boundary-design` for disputed boundaries and `$technical-decision-making` when alternatives or risk acceptance require accountable closure.

Propose the scale and consequence classification. Let the accountable human confirm, narrow, override, or accept the resulting residual risk; do not turn the heuristics into automatic governance.

## Redesign workflow

1. **Frame the inquiry.** Name the completed capability or system slice, completion point or fixed point when available, decision owner, intended outcomes, and the specific reason to reconsider the design. Bound the evidence surface to direct behavior, producers, consumers, interfaces, runtime and ownership boundaries, and acceptance evidence; widen only when the question crosses that scope.
2. **Recover the learning.** Read the relevant requirements, decisions, implementation, tests, operational evidence, incidents, performance results, user feedback, support constraints, and history. Stop when additional archaeology is unlikely to change the target or route; record remaining uncertainty.
3. **Separate requirements from inherited design.** Express goals, invariants, supported behavior, real failure modes, performance constraints, and proven assumptions without embedding current modules, names, representations, state machines, compatibility paths, or abstractions.
4. **Derive the first-principles target.** Describe the smallest coherent design that satisfies the learned requirements: responsibility and state ownership, interfaces and invariants, request and data flow, failure behavior, intentionally unsupported behavior, and meaningful test seams. Prefer fewer concepts, owners, representations, states, branches, and coordination seams—not fewer lines alone.
5. **Compare target and current designs.** Identify convergence, removable fat, structural divergence, implementation discoveries missing from the requirements, and behavior changes that must not be disguised as simplification. Judge hardening by the current invariant and credible fault model it protects, not by its age or provenance.
6. **Recommend one primary route.** Choose **prune** when the core structure converges, **reshape** when bounded ownership or interface changes can reach the target safely, or **rebuild** when the foundational model differs and adaptation would retain more accidental complexity than replacement. Base the choice on migration economics, behavioral risk, proof burden, temporary dual-system cost, and retained complexity.
7. **Route follow-up work.** Name the focused design, decision, transition, release, observability, and verification skills needed next. For consequential reshape or rebuild, require fresh independent challenge and executed evidence before cutover; present that need to the accountable human rather than certifying the target yourself.
8. **Report the recommendation.** Lead with scale, verdict, and confidence. Report learned requirements, target design, current comparison, route rationale, expected structural reduction, disputed protections, uncertainties, required decisions, and selected follow-up skills.

Read [references/retrospective-redesign.md](references/retrospective-redesign.md) when the route is ambiguous or consequential, or when a structured evidence record and report format would improve the review.

## Quality gates

- The evidence surface is bounded and the important implementation and operational learning is represented.
- Learned requirements are design-neutral and distinguish required behavior from inherited structure.
- The target is justified from outcomes and invariants; surviving current choices are freshly justified.
- The comparison covers ownership, interfaces, state, flow, failure behavior, and migration consequences.
- The route has explicit evidence, economics, uncertainty, confidence, and an accountable decision owner.
- Consequential claims name independent evaluation and verification needs instead of self-certifying equivalence.
- The result names appropriate follow-up skills and leaves the target system unchanged.

## Reject weak redesigns

- Do not turn a bounded retrospective into an unbounded repository or estate review.
- Do not call a behavior change, interface break, or support-policy change a simplification.
- Do not mistake distinct failure coverage or defense in depth for duplication.
- Do not preserve hypothetical compatibility without evidence of public, plugin, reflection, configuration-driven, or otherwise non-enumerable consumers.
- Do not add extensibility, indirection, or configuration without a demonstrated variant.
- Do not rebuild merely because a clean design looks attractive or replace straightforward code with a fashionable abstraction.
- When the learned target substantially converges with the current design, recommend pruning the fat and retaining the sound structure.
