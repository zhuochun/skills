---
name: architecture-assessment
description: Discover and rank architecture improvement opportunities across an existing software scope before selecting one redesign target. Use for portfolio health checks, counterview or fresh-eye reassessment, modernization priorities, recurring cross-cutting change, fragile hotspots, testing difficulty, or ownership friction. Produce an evidence-backed portfolio; route one proposed design to architecture-risk-evaluation and one completed design with new learning to retrospective-architecture-review.
---

# Architecture Assessment

Discover what deserves architecture attention within a declared software scope before choosing a redesign target. Compare a small portfolio of high-leverage opportunities grounded in actual change, defect, runtime, and ownership evidence. Do not perform a speculative rewrite or equate unfamiliar structure with bad architecture.

## Preserve scope and authority

- Own portfolio discovery, not route selection for one completed design with new learning; route that to `$retrospective-architecture-review`.
- Produce an assessment by default. Do not refactor, migrate, split services, or change public contracts until the user selects and authorizes a candidate.
- Read applicable repository instructions, architecture and service records, domain artifacts, ownership sources, and relevant standards before evaluating structure.
- Preserve unrelated work and sensitive information. Place generated reports outside the repository unless the user requests a tracked artifact.
- Name subject and boundary. For large scopes, choose a portfolio, value stream, dependency region, or history window; samples do not prove whole-estate coverage.

## Select an assessment posture

Select a posture only after confirming that the decision remains which structural opportunity deserves investment. If one completed design is already selected and later learning changed its premises, route to `$retrospective-architecture-review` regardless of the requested posture.

- Use an **evolutionary posture** when the decision concerns the best next investment within active constraints and migration economics. Treat current architecture and active decisions as the starting point, then test whether current evidence still supports them.
- Use a **counterview posture** for a fresh-eye request or when the existing frame could hide alternatives. Preserve hard constraints and supported behavior, but treat current topology and prior recommendations as candidates rather than vetoes. Form the initial candidate set before reconciling earlier conclusions. Recommend accountable reopening or supersession when justified; do not mark a decision superseded for its owner.
- Use a **comparative posture** when the user requests both views or when decision consequence and anchoring risk justify the extra pass. Share one evidence baseline, compare the evolutionary and counterview rankings, and reconcile them into one portfolio.
- Treat **first-principles analysis** as an optional counterview technique, not a separate posture. Use it when the inherited problem frame or claimed constraint status needs evidence-based re-derivation; it does not waive supported behavior or proven constraints.
- Name the changed evidence, context, scope, horizon, or posture before repeating a portfolio assessment. Without such a delta, run a bounded counterview against the current result instead of presenting a duplicate reassessment as new evidence.

## Assessment workflow

1. **Define the portfolio decision.** State subject, goals, scope, horizon, exclusions, constraints, desired change locality, investment decision, posture, and any reassessment delta. Exclude already-selected retrospective designs.
2. **Build an evidence baseline.** Inspect change hotspots, defect and incident clusters, test feedback, source and build boundaries, deployment and runtime dependencies, data ownership, performance constraints, system learning stage, and team handoffs where applicable. Use history in addition to a current structural snapshot. Separate hard constraints and supported behavior from prior solution choices.
3. **Follow representative changes.** Trace several real features, fixes, and operational events through the relevant modules, services, repositories, delivery system, and owners. Note meaning search, coordinated edits, interface leakage, and ownership transfers.
4. **Find candidate mechanisms.** Look for missing domain concepts, shallow modules, duplicated design knowledge, layer-oriented scattering, hidden dependencies, accidental state, plan/effect fusion, unstable service boundaries, framework intrusion, and untestable remote failure behavior.
5. **Challenge the frame.** When the posture includes counterview work, test the current shape against the simplest credible counterfactual and one materially different branch when evidence supports it. Vary assumptions or evidence instead of restating the same ranking in a new context.
6. **Reconcile prior decisions.** Recover each relevant decision's original context, status, accepted consequences, and current evidence. Preserve binding constraints. Identify choices that remain justified, choices whose assumptions changed, and choices that need accountable reopening.
7. **Validate and shape candidates.** Apply deletion, change-locality, interface-depth, scenario, and migration tests. Describe enough responsibility, seam, interface, ownership, data authority, behavior, and tracer change to judge merit without performing several redesigns.
8. **Estimate value and cost.** Consider change frequency, customer and operational consequence, reach, migration risk, reversibility, coordination, evidence strength, and sensitivity to posture.
9. **Rank one portfolio.** Separate strong, worth-exploring, and speculative candidates. Prefer one enabling move that opens later options over a broad rewrite. Explain any ranking change or disagreement between postures.
10. **Report and stop.** Present evidence, posture, reassessment delta, reconciled decisions, benefits, risks, migration outline, and recommendation. Ask the user which candidate to explore or implement.

Read [references/architecture-assessment.md](references/architecture-assessment.md) only when a formal candidate card, ranking rubric, or durable assessment report is needed.

## Quality gates

- Candidates cite concrete structure, change, failure, runtime, or ownership evidence and explain the cost mechanism.
- Plausible investments span the declared scope; one preselected design is not a portfolio.
- Counterview work preserves supported behavior and hard constraints while allowing the current topology or a prior recommendation to lose the comparison.
- Comparative work returns one reconciled ranking and traces disagreements to evidence, assumptions, constraints, or migration economics.
- When candidate structure materially affects ranking, include the smallest self-contained text comparison of current pressures and candidate responsibility, state, control, data, or ownership shifts. Keep every candidate explicitly unselected; do not label one as the after state.
- Boundaries connect domain intent to change pressure and improve tests, operations, or comprehension.
- Migration, compatibility, rollback, decisions, and uncertainty are explicit.
- Implementation waits for selection and authorization.

## Reject common failure modes

- Do not optimize counts or preferred styles, condemn all duplication, propose interfaces before behavior, or extract before a coherent logical boundary.
- Do not hide unrelated complexity in a god module or bury the top decision in findings.
- Do not call a repeated context independent or fresh when it shares the same assumptions, evidence, and authority to reject.
- Do not ignore architecture history; use it to recover constraints and rationale without turning an old solution into permanent authority.
- Portfolio assessment must not duplicate one-proposal risk evaluation or one-design retrospective review.
