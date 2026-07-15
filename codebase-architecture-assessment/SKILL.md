---
name: codebase-architecture-assessment
description: Assess a software codebase and produce a ranked, evidence-backed portfolio of architecture improvements that reduce future change cost, hidden coupling, operational risk, and comprehension burden. Use for architecture health checks, modernization planning, recurring cross-cutting changes, fragile hotspots, service or module sprawl, difficult testing, ownership friction, or requests to find the highest-leverage structural improvements before choosing a refactor.
---

# Codebase Architecture Assessment

Find a small set of high-leverage improvements grounded in actual change, defect, runtime, and ownership evidence. Do not perform a speculative rewrite or equate unfamiliar structure with bad architecture.

## Preserve scope and authority

- Produce an assessment by default. Do not refactor, migrate, split services, or change public contracts until the user selects and authorizes a candidate.
- Read repository instructions, architecture records, domain artifacts, ownership files, and relevant standards before evaluating structure.
- Preserve unrelated work and sensitive information. Place generated reports outside the repository unless the user requests a tracked artifact.
- For very large estates, agree on a portfolio, value stream, subsystem, or change-history window. Do not claim whole-enterprise coverage from a sample.

## Assessment workflow

1. **Define the decision surface.** State business goals, scope, time horizon, excluded areas, constraints, and what kinds of changes the architecture should make easier.
2. **Build an evidence baseline.** Inspect change hotspots, defect and incident clusters, test feedback, build and deploy boundaries, runtime dependencies, data ownership, performance constraints, and team handoffs. Use history in addition to the current tree.
3. **Follow representative changes.** Trace several real features, fixes, and operational events through the code and delivery system. Note meaning search, coordinated edits, interface leakage, and ownership transfers.
4. **Find candidate mechanisms.** Look for missing domain concepts, shallow modules, duplicated design knowledge, layer-oriented scattering, hidden dependencies, accidental state, plan/effect fusion, unstable service boundaries, framework intrusion, and untestable remote failure behavior.
5. **Validate each candidate.** Apply deletion, change-locality, interface-depth, scenario, and migration tests. Check whether the candidate conflicts with an ADR or reflects a deliberate tradeoff.
6. **Design a target direction.** Describe the new responsibility, seam, interface, ownership, data authority, and behavior—not just moved files. Include the smallest tracer change that can test the idea.
7. **Estimate value and cost.** Consider change frequency, customer and operational consequence, reach, migration risk, reversibility, coordination, and evidence strength.
8. **Rank a portfolio.** Separate strong, worth-exploring, and speculative candidates. Prefer one enabling move that opens later options over a broad rewrite.
9. **Report and stop.** Present evidence, before/after structure, benefits, risks, migration outline, and recommendation. Ask the user which candidate to explore or implement.

Use [references/architecture-assessment.md](references/architecture-assessment.md) for evidence collection, scoring, and the report format.

## Quality gates

- Every candidate cites concrete files, changes, failures, or ownership evidence.
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
