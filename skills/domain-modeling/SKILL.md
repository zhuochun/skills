---
name: domain-modeling
description: Discover, compare, and evolve selective software domain models and bounded contexts around an important problem. Use when solution-shaped requirements, conflicting language, repeated exceptions, disputed concepts or invariants, unclear translations, or hidden historical state make behavior hard to express. Model meaning before choosing services, schemas, deployment boundaries, or object patterns.
---

# Domain Modeling

Build a problem-specific model that makes important decisions, rules, and behavior easier to express. Treat modeling as a continuing learning loop between domain work, examples, code, data, operations, and later change—not as a universal taxonomy or one-time naming exercise.

## Preserve context and authority

- Discover existing language, schemas, decisions, context maps, APIs, tests, events, reports, and ownership first.
- Default to analysis and proposal. Update documentation or code only when the user requests it, and preserve established artifact names and locations.
- Treat stakeholder prescriptions, code, schemas, and services as evidence, not sole authority. Preserve mandated constraints and rationale.
- Record disagreement, context-specific meanings, and missing perspectives. Do not force one enterprise-wide definition where several precise local models are healthier.
- Keep semantic context, code module, data authority, deployable service, failure domain, and team ownership distinct unless evidence justifies aligning them.

## Modeling workflow

1. **Recover the problem.** Translate requested screens, fields, services, schemas, rules, or technologies into outcomes, decisions, constraints, examples, invariants, and success or failure. Keep implementation as one candidate unless constrained.
2. **Bound the modeling investment.** Name the important workflow or decision and the modeling horizon. Use intensive modeling where meaning and behavior are the hard part; use simpler standard models where local differentiation is low. State what this model deliberately will not answer.
3. **Gather language and evidence.** Compare experts, work, users, support, code, data, tests, interfaces, incidents, and operations. Mark synonyms, homonyms, missing or overloaded concepts, hidden state, and declared-executable contradictions.
4. **Write operational principles.** For each important behavioral concept, trace a compact scenario from purpose through actors, starting state, actions, transitions, and observable outcome. Add separate edge scenarios for reversal, authorization, time, partial progress, failure, repair, and reporting where they affect the model.
5. **Generate and compare candidates.** For consequential choices, create materially different lightweight models. Judge them by difficult decisions, workflows, operations, invariants simplified, omissions, new complexity, and awkward adjacent scenarios—not realism or completeness alone.
6. **Diagnose model friction.** Use repeated exceptions, flag clusters, generic records, missing domain terms, awkward transitions, cross-cutting edits, user-visible inconsistency, and rules dependent on hidden historical state as prompts for model investigation—not proof that one fashionable pattern is required.
7. **Draw semantic boundaries and translations.** State where vocabulary, rules, invariants, and authority remain coherent. At each edge, identify the foreign and local meanings, translation or deliberate conformance, contract, ownership, and power constraints. Describe the relationship actually evidenced; do not force a context-map label.
8. **Choose enforcement proportionately.** Use conversation, documentation, modules, ownership, private persistence, interfaces, or isolation as needed. Account for coordination, translation, latency, failure, observability, and operating cost. Route deployable, data, failure, or team boundaries to `$service-boundary-design`.
9. **Express and renew the model.** Reflect stable concepts and behavior in names, types, values, events, tests, modules, APIs, and data authority where they reduce ambiguity. Record consequential alternatives and revisit signals. Use later changes, failures, and operational work as evidence that the model or boundary needs refinement.

Route an accepted candidate rule or state model to `prototype-to-learn` when
hands-on driving could expose ambiguity. Keep disputed meaning and invariant
authority in this skill.

Read [references/modeling-artifacts.md](references/modeling-artifacts.md) only when a facilitated session, model comparison, context boundary, or durable decision record is needed.

## Quality gates

- The selective model names its problem, decision, or workflow.
- Concepts connect purpose, state, action, and outcomes; consequential choices compare scenarios and omissions.
- Language and rules reconcile with work, code, data, and operations or expose contradictions.
- Boundaries define precise meaning and foreign translation or conformance.
- Logical, code, data, deployment, failure, and team boundaries remain distinct.
- Enforcement balances integrity with relocated complexity.
- Uncertainty, disagreement, migration gaps, and revisit signals persist.

## Reject modeling theater

- Nouns are not automatically entities, tables are not the model, and contexts are not services.
- Reject behavior-free glossaries, universal enterprise models, and label-only context maps.
- Reconcile experts, code, schemas, and service ownership; preserve meaningful local terminology and translate meaning, not shape.
- Physical separation cannot repair incoherence, and elegance alone cannot justify rewriting without compatibility, migration, and operational evidence.
