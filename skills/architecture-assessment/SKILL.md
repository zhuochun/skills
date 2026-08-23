---
name: architecture-assessment
description: Discover and rank architecture improvement opportunities across an existing software scope before one redesign target is selected. Use for portfolio health checks, counterview or fresh-eye reassessment, modernization priorities, cross-cutting change, fragile hotspots, testing difficulty, or ownership friction. Route one proposal to architecture-risk-evaluation and completed-design learning to retrospective-architecture-review.
---

# Architecture Assessment

Rank what deserves focused architecture investment across a declared existing-software scope. Ground one portfolio in change, defect, test, runtime, data, and ownership evidence; do not redesign the estate or treat unfamiliarity as a defect.

## Preserve scope and authority

- Own portfolio discovery before target selection. Route one proposed target to `$architecture-risk-evaluation`; route a selected completed design with material later learning to `$retrospective-architecture-review`.
- Work read-only until the user selects and authorizes a candidate. Return reports inline or outside the repository unless a tracked artifact is requested.
- Read applicable repository instructions, decisions, domain and service records, ownership sources, and standards. Preserve unrelated work and sensitive information.
- Bound the subject by portfolio, value stream, dependency region, or history window; samples do not prove whole-estate coverage.

## Select an assessment posture

Choose a posture only while the decision remains which opportunity deserves investment.

- **Evolutionary:** Rank the best next investment from current architecture, active constraints, decisions, and migration economics; test whether current evidence still supports them.
- **Counterview:** For a fresh-eye request or anchoring risk, preserve proven constraints and supported behavior but let current topology and prior recommendations lose. Form candidates before reconciling earlier conclusions. Recommend accountable reopening when justified; do not supersede a decision for its owner.
- **Comparative:** When both views or the consequence warrants the extra pass, share one evidence baseline, compare evolutionary and counterview rankings, and reconcile one portfolio.
- Use **first-principles analysis** inside counterview work only when the inherited frame or claimed constraints need evidence-based re-derivation.
- Repeat an assessment only with changed evidence, context, scope, horizon, or posture. Otherwise run a bounded counterview against the current result.

## Assessment workflow

1. **Frame the portfolio.** State subject, goal, scope, horizon, exclusions, constraints, desired change locality, posture, and reassessment delta. Exclude selected completed designs.
2. **Build the baseline.** Use history plus current structure to inspect hotspots, defects, incidents, tests, build and deployment boundaries, runtime and data dependencies, performance, learning stage, and ownership. Separate proven constraints and supported behavior from prior solution choices.
3. **Trace representative pressure.** Follow real features, fixes, and operational events across modules, services, delivery, and owners. Note coordinated edits, meaning search, interface leakage, and ownership transfers.
4. **Find mechanisms.** Look for missing domain concepts, shallow modules, duplicated knowledge, scattered change, hidden state, dependencies or effects, unstable boundaries, framework leakage, and remote failure that cannot be tested credibly.
5. **Challenge and reconcile.** For counterview work, compare the current shape with the simplest credible counterfactual and one materially different branch when supported. Recover relevant decisions, binding constraints, changed assumptions, and any accountable reopening.
6. **Shape and test candidates.** Apply deletion, change-locality, interface-depth, scenario, and migration tests. Describe only enough responsibility, seam, interface, ownership, data authority, behavior, and tracer change to judge merit.
7. **Rank one portfolio.** Classify candidates as strong, worth exploring, or speculative using consequence, reach, frequency, evidence, migration risk, reversibility, coordination, option value, and posture sensitivity. Prefer an enabling move over a broad rewrite; trace posture disagreements to evidence, assumptions, constraints, or migration economics.
8. **Report and stop.** Lead with the ranking and decisive evidence. State posture, delta, prior-decision reconciliation, benefits, risks, migration outline, and uncertainty. When structure affects rank, include the smallest self-contained text comparison of current and candidate responsibility, state, control, data, or ownership; keep candidates unselected. Ask which candidate to select or explore.

Read [references/architecture-assessment.md](references/architecture-assessment.md) only when a formal candidate card, ranking rubric, or durable assessment report is needed.

## Quality gates

- The portfolio spans the declared scope; each candidate ties evidence and domain intent to a recurring cost mechanism and a boundary that improves change, tests, operations, or comprehension.
- Counterview preserves supported behavior and proven constraints; comparative work reconciles disagreement into one evidence-explained ranking.
- Candidates remain unselected and stop short of several redesigns; migration, compatibility, reversibility, decisions, and uncertainty stay explicit.
- No implementation begins before selection and authorization.

## Reject common failure modes

- Do not optimize counts or preferred styles, condemn all duplication, hide complexity in a god module, or propose interfaces before behavior and ownership are coherent.
- Do not call repeated work independent or fresh when assumptions, evidence, and authority to reject are unchanged.
- Use history to recover constraints and rationale, not to grant old solutions permanent authority.
- Do not duplicate one-proposal risk evaluation, one-design retrospective review, or implementation.
