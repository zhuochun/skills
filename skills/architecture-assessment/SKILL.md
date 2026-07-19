---
name: architecture-assessment
description: Discover and rank architecture improvement opportunities across an existing module, service, subsystem, platform, codebase, end-to-end capability, or software estate before a single redesign target has been selected. Use for architecture portfolio health checks, modernization priorities, recurring cross-cutting change, fragile hotspots, service or module sprawl, difficult testing, ownership friction, or requests to decide what structural work deserves investment first. Produce a ranked evidence-backed portfolio and route selected candidates to focused design. Do not use to evaluate one proposed target architecture or retrospectively reconsider one completed design after material learning; use architecture-risk-evaluation or retrospective-architecture-review respectively.
---

# Architecture Assessment

Discover what deserves architecture attention within a declared software scope before choosing a redesign target. Compare a small portfolio of high-leverage opportunities grounded in actual change, defect, runtime, and ownership evidence. Do not perform a speculative rewrite or equate unfamiliar structure with bad architecture.

## Preserve scope and authority

- Own portfolio discovery and ranking, not retrospective route selection for one already-selected design. When a completed capability is already the decision surface and material implementation or operational learning has changed its premises, route to `$retrospective-architecture-review`.
- Produce an assessment by default. Do not refactor, migrate, split services, or change public contracts until the user selects and authorizes a candidate.
- Read applicable repository instructions, architecture and service records, domain artifacts, ownership sources, and relevant standards before evaluating structure.
- Preserve unrelated work and sensitive information. Place generated reports outside the repository unless the user requests a tracked artifact.
- Name the architecture subject and boundary: module, service, subsystem, platform, codebase, capability, or estate. For large scopes, agree on a portfolio, value stream, dependency region, or change-history window. Do not claim whole-estate coverage from a sample.

## Assessment workflow

1. **Define the portfolio decision surface.** State the architecture subject, business goals, scope, time horizon, excluded areas, constraints, what kinds of changes the architecture should make easier, and which investment decision the ranking must support. Confirm that no single completed design has already been selected for retrospective reconsideration.
2. **Build an evidence baseline.** Inspect change hotspots, defect and incident clusters, test feedback, source and build boundaries, deployment and runtime dependencies, data ownership, performance constraints, and team handoffs where applicable. Use history in addition to a current structural snapshot.
3. **Follow representative changes.** Trace several real features, fixes, and operational events through the relevant modules, services, repositories, delivery system, and owners. Note meaning search, coordinated edits, interface leakage, and ownership transfers.
4. **Find candidate mechanisms.** Look for missing domain concepts, shallow modules, duplicated design knowledge, layer-oriented scattering, hidden dependencies, accidental state, plan/effect fusion, unstable service boundaries, framework intrusion, and untestable remote failure behavior.
5. **Validate each candidate.** Apply deletion, change-locality, interface-depth, scenario, and migration tests. Check whether the candidate conflicts with an ADR or reflects a deliberate tradeoff.
6. **Shape each candidate direction.** Describe only enough new responsibility, seam, interface, ownership, data authority, and behavior to judge whether the opportunity merits focused design. Include the smallest tracer change that can test the idea; do not turn portfolio assessment into several full redesigns.
7. **Estimate value and cost.** Consider change frequency, customer and operational consequence, reach, migration risk, reversibility, coordination, and evidence strength.
8. **Rank a portfolio.** Separate strong, worth-exploring, and speculative candidates. Prefer one enabling move that opens later options over a broad rewrite.
9. **Report and stop.** Present evidence, before/after structure, benefits, risks, migration outline, and recommendation. Ask the user which candidate to explore or implement.

Use [references/architecture-assessment.md](references/architecture-assessment.md) for evidence collection, scoring, and the report format.

## Quality gates

- Every candidate cites concrete structure, files, changes, failures, runtime behavior, or ownership evidence.
- The result compares plausible investment candidates across the declared scope rather than treating one preselected design as a portfolio.
- Explain the mechanism causing cost, not only a code smell.
- Connect the proposed boundary to domain intent and actual change pressure.
- Show how tests, operations, or comprehension improve.
- Include migration, compatibility, and rollback considerations.
- Respect ADRs or explicitly justify reopening them.
- Rank uncertainty and avoid false precision.
- Leave implementation untouched until selection and authorization.

## Reject common failure modes

- Do not optimize for fewer files, fewer classes, more services, or a preferred architecture style.
- Do not call all duplication bad; some duplication preserves independent change until a stable abstraction emerges.
- Do not propose interfaces before understanding the behavior and callers.
- Do not recommend physical extraction before a logical boundary is coherent.
- Do not create a “god module” by moving unrelated complexity behind one name.
- Do not produce dozens of low-value findings that obscure the top decision.
- Do not use a broad portfolio frame to duplicate risk evaluation for one proposal or retrospective review for one completed design with a material knowledge delta.
