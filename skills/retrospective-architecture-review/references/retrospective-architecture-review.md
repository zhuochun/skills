# Retrospective architecture review

Use this reference to reconsider one selected completed design after a material knowledge delta, without turning the reasoning into a user-maintained handoff artifact. For a broad search and ranking of architecture opportunities, use `$architecture-assessment` instead.

## Knowledge-derived reasoning model

This workflow is grounded in the following mechanisms from the knowledge base:

| Mechanism | Consequence for this skill |
| --- | --- |
| **Architectural Learning Requires Consolidation** | Trigger on demonstrated learning from exploration, repeated change, and operation; convert it into boundaries, tests, rationale, defaults, merging, splitting, retirement, or quarantine rather than generic cleanup. |
| **Essential Work Sets Improvement Ceilings** | Diagnose whether redesign addresses conceptual problem work, accidental friction, or both before predicting leverage. |
| **Model Friction Signals Domain Misalignment** | Treat repeated exceptions, awkward business language, and non-local changes as evidence for model investigation, not automatically as module-cleanliness problems. |
| **Triple Debt Model for Software Health** | Recover evidence across code and structure, shared understanding, and preserved intent so a cleaner target does not deepen cognitive or intent debt. |
| **Regenerable Code Requires Externalized Commitments** | Require behavior, invariants, rationale, failure cases, and validation methods outside the old code before treating a rebuild as safely judgeable. |
| **Reversibility Preserves Adaptive Capacity** | Compare routes by retreat, compatibility, temporary dual paths, irreversible effects, and cleanup—not target elegance alone. |
| **Architecture Tradeoffs Require Contextual Weighting** | Weight changeability, safety, operability, cost, and migration against current business drivers and hard constraints. |
| **Correctness Should Come From Structure, Not Vigilance** | Prefer encoding repeated lessons in durable structure, tests, defaults, and boundaries instead of relying on future memory. |
| **Adversarial Evaluators Separate Generation From Judgment** | Use a fresh evaluator only when it owns distinct evidence, criteria, or decision rights; a second context alone does not create independence. |
| **Blameless Incident Learning and Drift Into Failure** | Treat incidents, ordinary workarounds, and weak signals as model-revision evidence without turning local adaptations into blame or deleting them as mere mess. |

These mechanisms are practice-grounded heuristics, not universal thresholds. Apply them proportionately to system lifetime, consequence, and available evidence.

## Pressure diagnosis

| Observed pressure | Essential, accidental, or mixed | Evidence | What would improve if removed? | What would remain? |
| --- | --- | --- | --- | --- |

Examples of useful signals include repeated cross-cutting changes, recurring exceptions, concepts that change at different rates but share one boundary, tacit operational workarounds, overloaded names, duplicate representations, obsolete compatibility, slow feedback, and ownership that exists only in people's memory.

## Learning and commitment ledger

Do not copy every historical detail. Record only facts that can change the target, route, or proof burden.

| Learned outcome, invariant, or behavior | Declared, tested, observed, inferred, or disputed | Evidence and confidence | Current carrier | Target disposition: preserve, retire by decision, or unresolved | Decision owner |
| --- | --- | --- | --- | --- | --- |

Use the ledger to separate durable commitments from inherited implementation choices. Current modules, names, representations, and control flow may change; contractual behavior, user expectations, failure semantics, and support policy require evidence and authority. If sources disagree, preserve the contradiction and identify the smallest probe or decision that resolves it.

Treat code as removable only when no required contract, real consumer, runtime discovery path, supported operational use, or unresolved support-policy question depends on it. Tests alone prove neither that code is live nor that it is dead.

## Candidate comparison

Compare the current or minimally consolidated design with materially different candidates when the decision warrants it.

| Candidate | Learning encoded | Commitments preserved or changed | Meaning and change locality | Failure and operating consequences | Reversibility and migration | Debt left behind |
| --- | --- | --- | --- | --- | --- | --- |

Reject an option eliminated by a hard constraint before weighting preferences. Name the evidence that would change the comparison.

## Route comparison

| Route | Use when | Required reasoning | Typical follow-up |
| --- | --- | --- | --- |
| **Retain** | The current structure remains justified, evidence is too weak, remaining lifetime is short, or redesign would not repay its migration and proof cost | State what learning is already encoded, what friction remains, and what signal would trigger reconsideration | No design project; optionally add a focused test, rationale, or operational probe |
| **Quarantine** | Disorder contains valuable or poorly understood behavior and full consolidation is currently too risky or expensive | Define the stable boundary, ownership, allowed leakage, evidence to collect, and exit trigger | `$deep-module-design` for the boundary; `$verification-strategy-design` for characterization when needed |
| **Prune** | Ownership, model, interfaces, state, and flow substantially converge with the learned target | Demonstrate which concepts, paths, layers, or compatibility obligations are obsolete and which protections remain | Scoped implementation with proportionate repository verification |
| **Reshape** | The learned model agrees on outcomes but bounded ownership, interfaces, state, or flow differ | Identify stable seams, incremental slices, compatibility, temporary complexity, and retirement | `$domain-modeling`, `$deep-module-design`, or `$service-boundary-design`; add `$migration-planning` when transition states or irreversible effects matter |
| **Rebuild** | The foundational model differs, adaptation would preserve excessive accidental complexity, and durable commitments can judge a replacement | Compare replacement economics, externalized commitments, equivalence limits, dual-system cost, cutover, and rollback or fail-forward | Fresh `$architecture-risk-evaluation`, `$technical-decision-making` where closure is contested, `$migration-planning`, and `$verification-strategy-design`; add `$controlled-release-design` when exposure must be governed |

Local exceptions may be reported without changing the primary route. A clean diagram is not evidence for rebuild.

## Consequence routing

Stronger independent challenge and verification are normally warranted for public-contract or support-policy change, durable-data migration, cross-service coordination, security or financial effect, large blast radius, irreversible behavior, or material operating-model change.

Route gaps by their actual type:

- domain meaning or invariant gap → `$domain-modeling`;
- module ownership, interface, or state gap → `$deep-module-design`;
- deployable, data, failure, or team boundary gap → `$service-boundary-design`;
- systemic quality or assumption risk → `$architecture-risk-evaluation`;
- contested alternative or risk acceptance → `$technical-decision-making`;
- risky migration or cutover → `$migration-planning`;
- feature exposure, cohorts, promotion, or kill controls → `$controlled-release-design`;
- missing prospective telemetry contract → `$observability-design`;
- missing claim, oracle, or evidence portfolio → `$verification-strategy-design`.

## Report format

1. **Selected review unit, scale, route, confidence, and decisive uncertainty**
2. **Knowledge delta, pressure diagnosis, and why retrospective reconsideration is justified**
3. **Learned commitments and contradictions**
4. **Candidate designs and current-design baseline**
5. **Convergence, divergence, and structural learning to encode**
6. **Route economics, reversibility, and proof burden**
7. **Support-policy and accountable human decisions**
8. **Selected follow-up skills and stop conditions**

Measure structural reduction using concepts, owners, interfaces, states, branches, representations, modules, and test seams. Treat line-count reduction as secondary evidence.
