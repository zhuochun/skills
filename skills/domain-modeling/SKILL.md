---
name: domain-modeling
description: Discover, compare, and evolve selective software domain models and bounded contexts around an important problem. Use when solution-shaped requirements, conflicting language, repeated exceptions, disputed concepts, classifications, or invariants, unclear translations, or hidden historical state make behavior hard to express. Model meaning before choosing services, schemas, deployment boundaries, or object patterns.
---

# Domain Modeling

Build a problem-specific model that makes important decisions, rules, and behavior easier to express. Treat modeling as a continuing learning loop between domain work, examples, code, data, operations, and later change—not as a universal taxonomy or one-time naming exercise.

## Preserve context and authority

- Discover existing language, schemas, decisions, context maps, APIs, tests, events, reports, and ownership first.
- Locate both the owner of the requested surface and the owner of the behavior, state, or meaning that must remain coherent before proposing another model or control point. Existing implementation is evidence, not automatic authority; reconcile it with work, language, and outcomes.
- Default to analysis and proposal. Update documentation or code only when the user requests it, and preserve established artifact names and locations.
- Treat stakeholder prescriptions, code, schemas, and services as evidence, not sole authority. Preserve mandated constraints and rationale.
- Mark consequential material as confirmed, inferred, assumed, proposed, or unresolved, and attach evidence locators when available.
- Record disagreement, context-specific meanings, and missing perspectives. Do not force one enterprise-wide definition where several precise local models are healthier.
- Keep legal, privacy, fairness, safety, and distributional judgments with accountable owners. Expose category meaning and revision authority without certifying those judgments.
- Keep semantic context, code module, data authority, deployable service, failure domain, and team ownership distinct unless evidence justifies aligning them.

## Modeling workflow

1. **Recover the problem.** Translate requested screens, fields, services, schemas, rules, or technologies into outcomes, decisions, constraints, examples, invariants, and success or failure. Keep implementation as one candidate unless constrained.
2. **Test whether modeling is needed and bound the investment.** Name the important workflow or decision, its current owners, and the modeling horizon. Use intensive modeling where meaning, rules, invariants, lifecycle, or translation are genuinely disputed or repeatedly create friction. When the existing values, defaults, lifecycle, and ownership are settled and the remaining choice is local presentation or technical policy, stop intensive modeling and return the smallest owner finding, compact rule, or route to implementation. A no-modeling result still cites evidence for the changed-surface owner and the preserved semantic or state owner, states why no material conflict remains, and lists the important non-changes. Do not create a second semantic owner. State what the model deliberately will not answer.
3. **Gather language and evidence.** Compare experts, work, users, support, code, data, tests, interfaces, incidents, and operations. Mark synonyms, homonyms, missing or overloaded concepts, hidden state, and declared-executable contradictions.
4. **Write operational principles.** For each important behavioral concept, trace a compact scenario from purpose through actors, starting state, actions, transitions, and observable outcome. Add separate edge scenarios for reversal, authorization, time, partial progress, failure, repair, and reporting where they affect the model.
5. **Generate and compare candidates.** For consequential choices, create materially different lightweight models. Judge them by difficult decisions, workflows, operations, invariants simplified, omissions, new complexity, and awkward adjacent scenarios—not realism or completeness alone.
   - When a candidate depends on identity, distinguish occurrence, content, semantic subject, version, and mutable locator. Challenge multiplicity, reorder, split or merge, edits, regeneration, deletion, and reappearance before claiming stability. Preserve provenance and unresolved identity policy rather than treating a hash or current key as universal identity.
6. **Diagnose model friction.** Use repeated exceptions, flag clusters, generic records, missing domain terms, awkward transitions, cross-cutting edits, user-visible inconsistency, and rules dependent on hidden historical state as prompts for model investigation—not proof that one fashionable pattern is required.
7. **Draw semantic boundaries and translations.** State where vocabulary, rules, invariants, and authority remain coherent. At each edge, identify the foreign and local meanings, translation or deliberate conformance, contract, ownership, and power constraints. Describe the relationship actually evidenced; do not force a context-map label.
   - When classifications determine what the system can recognize or act on, expose the selected objects, subjects, categories, and relations; excluded or ambiguous cases; affected perspectives; and contest or revision authority. Treat ambiguity as possible boundary evidence, not automatically bad data.
8. **Choose enforcement proportionately.** Use conversation, documentation, modules, ownership, private persistence, interfaces, or isolation as needed. Account for coordination, translation, latency, failure, observability, and operating cost. Route deployable, data, failure, or team boundaries to `$service-boundary-design`.
9. **Express and renew the model.** Reflect stable concepts and behavior in names, types, values, events, tests, modules, APIs, and data authority where they reduce ambiguity. Record consequential alternatives and revisit signals. Use later changes, failures, and operational work as evidence that the model or boundary needs refinement.

Route an accepted candidate rule or state model to `prototype-to-learn` when
hands-on driving could expose ambiguity. Keep disputed meaning and invariant
authority in this skill.

Route an accepted workflow to `trace-end-to-end-journey` when the missing
artifact is a shared experience-to-system walkthrough. Keep disputed semantics
and invariants in this skill.

Return the smallest useful result: an evidence-backed no-modeling owner finding,
a compact principle, or a selective model with alternatives, boundaries,
translations, unresolved owner decisions, and revisit signals.

Read [references/modeling-artifacts.md](references/modeling-artifacts.md) only when a facilitated session, model comparison, consequential classification, model-to-code expression decision, context boundary, or durable decision record is needed.

## Quality gates

- The selective model names its problem, decision, or workflow.
- Modeling effort is justified by a material semantic question or friction; otherwise the changed-surface and preserved-behavior owners, sufficiency evidence, and smaller route are named.
- Concepts connect purpose, state, action, and outcomes; consequential choices compare scenarios and omissions.
- Identity-bearing models state what remains the same, what creates a new identity, and which transformations or duplicates break the proposed key.
- Language and rules reconcile with work, code, data, and operations or expose contradictions.
- Consequential classifications expose exclusions, affected perspectives, and contest or revision authority without taking adjacent legal, privacy, fairness, or safety decisions.
- Boundaries define precise meaning and foreign translation or conformance.
- Logical, code, data, deployment, failure, and team boundaries remain distinct.
- Enforcement balances integrity with relocated complexity.
- Consequential claims retain evidence labels; uncertainty, disagreement, migration gaps, and revisit signals persist.

## Reject modeling theater

- Nouns are not automatically entities, tables are not the model, and contexts are not services.
- Reject behavior-free glossaries, universal enterprise models, and label-only context maps.
- Do not naturalize encoded categories as discovered facts, call every state change a domain event, or wrap every primitive in a value object.
- Reconcile experts, code, schemas, and service ownership; preserve meaningful local terminology and translate meaning, not shape.
- Physical separation cannot repair incoherence, and elegance alone cannot justify rewriting without compatibility, migration, and operational evidence.
