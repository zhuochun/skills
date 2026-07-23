---
name: architecture-assessment
description: Discover and rank architecture improvement opportunities across an existing software scope before selecting one redesign target. Use for portfolio health checks, modernization priorities, recurring cross-cutting change, fragile hotspots, sprawl, testing difficulty, or ownership friction. Produce an evidence-backed portfolio; route one proposed design to architecture-risk-evaluation and one completed design with new learning to retrospective-architecture-review.
---

# Architecture Assessment

Discover what deserves architecture attention within a declared software scope before choosing a redesign target. Compare a small portfolio of high-leverage opportunities grounded in actual change, defect, runtime, and ownership evidence. Do not perform a speculative rewrite or equate unfamiliar structure with bad architecture.

## Preserve scope and authority

- Own portfolio discovery, not route selection for one completed design with new learning; route that to `$retrospective-architecture-review`.
- Produce an assessment by default. Do not refactor, migrate, split services, or change public contracts until the user selects and authorizes a candidate.
- Read applicable repository instructions, architecture and service records, domain artifacts, ownership sources, and relevant standards before evaluating structure.
- Preserve unrelated work and sensitive information. Place generated reports outside the repository unless the user requests a tracked artifact.
- Name subject and boundary. For large scopes, choose a portfolio, value stream, dependency region, or history window; samples do not prove whole-estate coverage.

## Assessment workflow

1. **Define the portfolio decision.** State subject, goals, scope, horizon, exclusions, constraints, desired change locality, and investment decision. Exclude already-selected retrospective designs.
2. **Build an evidence baseline.** Inspect change hotspots, defect and incident clusters, test feedback, source and build boundaries, deployment and runtime dependencies, data ownership, performance constraints, and team handoffs where applicable. Use history in addition to a current structural snapshot.
3. **Follow representative changes.** Trace several real features, fixes, and operational events through the relevant modules, services, repositories, delivery system, and owners. Note meaning search, coordinated edits, interface leakage, and ownership transfers.
4. **Find candidate mechanisms.** Look for missing domain concepts, shallow modules, duplicated design knowledge, layer-oriented scattering, hidden dependencies, accidental state, plan/effect fusion, unstable service boundaries, framework intrusion, and untestable remote failure behavior.
5. **Validate each candidate.** Apply deletion, change-locality, interface-depth, scenario, and migration tests. Check whether the candidate conflicts with an ADR or reflects a deliberate tradeoff. When it conflicts, respect the ADR or explicitly justify reopening it.
6. **Shape candidates.** Describe enough responsibility, seam, interface, ownership, data authority, and behavior to judge merit. Include a tracer change, not full redesigns.
7. **Estimate value and cost.** Consider change frequency, customer and operational consequence, reach, migration risk, reversibility, coordination, and evidence strength.
8. **Rank a portfolio.** Separate strong, worth-exploring, and speculative candidates. Prefer one enabling move that opens later options over a broad rewrite.
9. **Report and stop.** Present evidence, before/after structure, benefits, risks, migration outline, and recommendation. Ask the user which candidate to explore or implement.

Read [references/architecture-assessment.md](references/architecture-assessment.md) only when a formal candidate card, ranking rubric, or durable assessment report is needed.

## Quality gates

- Candidates cite concrete structure, change, failure, runtime, or ownership evidence and explain the cost mechanism.
- Plausible investments span the declared scope; one preselected design is not a portfolio.
- Boundaries connect domain intent to change pressure and improve tests, operations, or comprehension.
- Migration, compatibility, rollback, decisions, and uncertainty are explicit.
- Implementation waits for selection and authorization.

## Reject common failure modes

- Do not optimize counts or preferred styles, condemn all duplication, propose interfaces before behavior, or extract before a coherent logical boundary.
- Do not hide unrelated complexity in a god module or bury the top decision in findings.
- Portfolio assessment must not duplicate one-proposal risk evaluation or one-design retrospective review.
