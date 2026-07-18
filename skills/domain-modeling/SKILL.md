---
name: domain-modeling
description: Discover, compare, and evolve selective software domain models and bounded contexts around an important problem. Use when requirements arrive as proposed solutions, business language conflicts with code or data, simple changes require repeated exceptions, teams disagree about concepts or invariants, context boundaries or translations are unclear, or a consequential domain decision needs scenario-based alternatives and rationale. Model behavior and meaning before choosing services, schemas, or object patterns.
---

# Domain Modeling

Build a problem-specific model that makes important decisions, rules, and behavior easier to express. Treat modeling as a continuing learning loop between domain work, examples, code, data, operations, and later change—not as a universal taxonomy or one-time naming exercise.

## Preserve context and authority

- Discover existing language, schemas, ADRs, context maps, APIs, tests, events, reports, and ownership before introducing a new model.
- Default to analysis and proposal. Update documentation or code only when the user requests it, and preserve established artifact names and locations.
- Treat stakeholder prescriptions, current code, database schemas, and service boundaries as evidence rather than sole authority. Preserve genuine mandated constraints and their rationale.
- Record disagreement, context-specific meanings, and missing perspectives. Do not force one enterprise-wide definition where several precise local models are healthier.
- Keep semantic context, code module, data authority, deployable service, failure domain, and team ownership distinct unless evidence justifies aligning them.

## Modeling workflow

1. **Recover the problem from the proposed solution.** Translate requested screens, fields, services, schemas, rules, or technologies into outcomes, difficult decisions, constraints, examples, invariants, and success or failure conditions. Keep the proposed implementation as one candidate unless it is a real constraint.
2. **Bound the modeling investment.** Name the important workflow or decision and the modeling horizon. Use intensive modeling where meaning and behavior are the hard part; use simpler standard models where local differentiation is low. State what this model deliberately will not answer.
3. **Gather language and evidence.** Compare terms and behavior across domain experts, actual work, user and support language, code, data, tests, interfaces, incidents, and operations. Mark synonyms, homonyms, missing concepts, overloaded umbrella terms, hidden state, and contradictions between declared and executable behavior.
4. **Write operational principles.** For each important behavioral concept, trace a compact scenario from purpose through actors, starting state, actions, transitions, and observable outcome. Add separate edge scenarios for reversal, authorization, time, partial progress, failure, repair, and reporting where they affect the model.
5. **Generate and compare candidates.** For consequential choices, create materially different lightweight models. Judge each by the difficult decisions, workflows, operations, and invariants it simplifies; its omissions and new complexity; and which adjacent scenarios become awkward. Do not choose by realism or completeness alone.
6. **Diagnose model friction.** Use repeated exceptions, flag clusters, generic records, missing domain terms, awkward transitions, cross-cutting edits, user-visible inconsistency, and rules dependent on hidden historical state as prompts for model investigation—not proof that one fashionable pattern is required.
7. **Draw semantic boundaries and translations.** State where vocabulary, rules, invariants, and authority remain coherent. At each edge, identify the foreign and local meanings, translation or deliberate conformance, contract, ownership, and power constraints. Describe the relationship actually evidenced; do not force a context-map label.
8. **Choose enforcement proportionately.** Decide whether conversation and documentation, code modules, ownership rules, private persistence, explicit interfaces, or physical isolation are needed to preserve the model under delivery pressure. Account for the coordination, translation, latency, failure, observability, and operating complexity each stronger boundary introduces. Route deployable, data, failure, or team-boundary decisions to `$service-boundary-design`.
9. **Express and renew the model.** Reflect stable concepts and behavior in names, types, values, events, tests, modules, APIs, and data authority where they reduce ambiguity. Record consequential alternatives and revisit signals. Use later changes, failures, and operational work as evidence that the model or boundary needs refinement.

Use [references/modeling-artifacts.md](references/modeling-artifacts.md) for the knowledge-derived reasoning model and adaptable session, comparison, boundary, and decision formats.

## Quality gates

- The model is selective and names the important problem, decision, or workflow it serves.
- Important concepts connect purpose, state, actions, and observable outcomes rather than forming a noun catalog.
- Consequential choices compare alternatives against difficult scenarios and explicit omissions.
- Language and rules are reconciled with actual work, code, data, and operations, or contradictions remain visible.
- Context boundaries state where meaning is precise and how foreign models are translated or deliberately accepted.
- Logical, code, data, deployment, failure, and team boundaries are not conflated.
- Enforcement strength is justified by model-integrity benefit and the complexity it relocates.
- Uncertainty, disagreements, migration gaps, and revisit signals are preserved.

## Reject modeling theater

- Do not convert every noun into an entity, every table into the model, or every bounded context into a service.
- Do not produce a glossary without behavior, a universal enterprise model, or a context map made only of pattern labels.
- Do not declare expert language, code, schemas, or current service ownership authoritative without reconciling the others.
- Do not “clean up” terminology that carries a meaningful local distinction or translate foreign models by copying their shape.
- Do not use physical separation to repair an incoherent model or ignore the distributed complexity it introduces.
- Do not rewrite a mature system merely because a candidate model is more elegant; account for compatibility, migration economics, and operational learning.
