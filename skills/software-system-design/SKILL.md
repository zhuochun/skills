---
name: software-system-design
description: Design a coherent technical solution for a bounded software capability or system when responsibilities, state ownership, interfaces, and execution must be resolved together across an end-to-end path. Use for new capabilities, application architecture, or integrations with unsettled structure. Keep settled implementation and isolated module decisions with their owners; do not implement or certify the design.
---

# Software System Design

Choose how the parts work together to deliver an application outcome. Own the
technical synthesis: connect responsibilities, state, interfaces, and execution
so each part's assumptions have a provider and the complete operation has an owner.
This applies within one application as well as across services.

## Bound the design and authority

- Start from the request, repository instructions, behavior, contracts, decisions,
  and operating evidence. No prior specification or mapping invocation is required.
  Preserve accepted behavior and constraints; distinguish them from proposed solutions.
- Work read-only against the target. A design request does not authorize code,
  configuration, data, infrastructure, or production changes. Use the existing
  conversation or design surface; write durable records only with record authority.
- Mark material claims confirmed, inferred, assumed, proposed, or unresolved.
  Do not invent workloads, runtime guarantees, service levels, support policy, or
  accepted risk. Ask only questions that can change the design; unresolved decisions
  block dependent conclusions, not independently useful analysis.
- Use the smallest scope containing the interacting decisions. Keep a ready change
  with its executor and a single module/interface question with `deep-module-design`.
  When the existing design already fits, explain its extension point and preserved
  invariants, then stop without adding architecture or a new design document.
- Keep module, semantic context, data authority, deployable service, failure domain,
  and team ownership distinct. File count or crossing several layers does not by
  itself justify a system redesign, service split, or full specialist workflow.

## Design the complete operation

Use required repository guidance and the relevant behavior and implementation owners
as the starting evidence. Before expanding the search, identify the unresolved
assumption and how its answer could change the candidate. Search targeted sections;
reuse inspected evidence unless it is incomplete, contradictory, or stale. Keep the
current candidate, decisive facts, and open questions salient instead of repeatedly
loading whole documents. This does not permit skipping required evidence or treating
an unexamined dependency as irrelevant.

1. **Recover the outcome and constraints.** Identify the actor or caller, operation,
   intended result, preserved invariants, current design, lifetime, and reversal cost.
   Separate hard constraints from preferences and unknowns. Inspect available evidence
   before asking; bound a new repository's design by the requested capabilities rather
   than speculative future systems.
2. **Trace responsibility and completion.** Follow input, decisions, state, effects,
   and result through the current or candidate path. Locate the component with enough
   knowledge to establish application success. Distinguish acceptance, transport delivery,
   durable handoff, applied effects, and completed work whenever those differ.
3. **Form the smallest viable candidate.** Start from the existing extension point or
   simplest arrangement that satisfies the requested outcome. Establish why additional
   capability is needed before exploring its implementation. Assign each invariant,
   mutable fact, resource, and lifecycle a responsible component. Define the decision-bearing interface assumptions:
   who provides what, under which conditions, and what callers observe on failure.
   Connect state/data flow, control flow, and runtime placement; expose dependencies
   instead of leaving orchestration or recovery between boxes. Reuse accepted specialist
   decisions and resolve their interactions here rather than merely listing routes.
4. **Challenge composition.** Trace representative success, change, and failure cases
   through the complete candidate. For stateful interactions, carry the resulting state
   from one action into the next: check identities, versions, preconditions, and who
   supplies them. A valid isolated action does not establish a valid sequence.
   Check whether local guarantees survive handoffs,
   retries, concurrency, partial effects, restart, and repair where relevant. Lower-level
   reliability may improve performance without establishing application correctness.
   Include resource exhaustion and recovery progress when the operating envelope matters.
5. **Compare the consequential alternative.** Include the current or simplest viable
   arrangement. Weight tradeoffs by local outcome, consistency, latency, changeability,
   operating burden, and reversal cost rather than counting advantages. Use rough
   workload/resource estimates when they can eliminate an option; retain assumptions
   and uncertainty. Add a cache, queue, replica, shared abstraction, or separate runtime
   only when its benefit justifies its additional state, contracts, and failure paths.
6. **Recommend and expose the evidence gap.** Return the candidate, decisive rationale,
   preserved commitments, and unresolved decisions. Identify the smallest prototype,
   measurement, or representative implementation slice that could falsify the important
   assumption. Reopen affected decisions when later evidence contradicts them. Proposed
   design, accepted decision, implemented behavior, and verified outcome remain distinct.

Read the relevant section of [references/composition-probes.md](references/composition-probes.md)
when an unresolved completion, interface/lifecycle, or recovery-capacity assumption
needs a deeper trace. Crossing several components alone does not require the reference.

## Compose by missing judgment

- `software-change-specification` owns ambiguous desired behavior; `domain-modeling`
  owns disputed meaning and invariants; `experience-design-specification` owns user
  flows and interaction decisions. Preserve their accepted results and expose conflicts.
- `deep-module-design` owns a focused module/interface decision. `service-boundary-design`
  owns a keep/split/merge or stronger data, deployment, and failure-enforcement decision.
  Route a separate unresolved boundary judgment to them, then integrate its implications
  into the complete path. Do not silently supersede their decisions or require both.
- `software-security-design` owns threat and control choices; `software-contract-evolution`
  owns compatibility and retirement policy. Name security and coexistence obligations
  here without inventing those policies. `migration-planning` owns a material transition
  between accepted current and target states; a plausible target is not a migration plan.
- `architecture-risk-evaluation` independently challenges consequential quality scenarios.
  Use distinct evaluation when uncertainty or consequence warrants it; self-challenge
  is not independent approval. `software-verification` owns evidence methods and verdicts;
  `prototype-to-learn` owns authorized disposable runnable probes.
- After design acceptance, keep implementation with `scoped-change-implementation` or
  `behavior-preserving-refactoring`. Route portfolio ranking to `architecture-assessment` and
  reconsideration of a completed design from later learning to `retrospective-architecture-review`.

## Quality and completion

- Return the smallest self-contained text flow, table, or comparison that explains
  the candidate's responsibilities, state, interfaces, and execution. Distinguish
  current, proposed, preserved, and unresolved elements; reuse an adequate existing view.
- Every consequential cross-component assumption has a provider, a condition, and a
  visible failure implication, or is explicitly unresolved. Show where complete success
  is established rather than inferring it from successful intermediate steps.
- Explain why the candidate fits the named constraints and what it gives up. A collection
  of technology names, individually sound modules, or an implementation task list does
  not demonstrate system coherence.
- Return a supported recommendation, a sufficient-current-design finding, or a conditional
  result with blocked decisions and next evidence. Do not claim implementation readiness
  across missing behavioral, security, compatibility, data, or recovery decisions.
- Keep accountable acceptance and residual risk with their owners. Design analysis and
  passing local checks cannot certify production fitness or authorize release.
