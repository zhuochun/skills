---
name: domain-modeling
description: Discover, compare, sharpen, and document software domain models and bounded contexts. Use when requirements arrive as proposed solutions, business terms conflict with code, simple changes require repeated exceptions, teams need a ubiquitous language, context boundaries or translations are unclear, or a consequential domain decision needs scenarios and rationale. Work from concrete workflows and invariants rather than producing an abstract glossary alone.
---

# Domain Modeling

Build a selective model that makes important decisions, rules, and behavior easier to express. Treat modeling as a learning loop between domain experts, examples, code, data, operations, and later change—not as a one-time naming exercise.

## Preserve context and authority

- Discover existing glossaries, schemas, ADRs, context maps, APIs, tests, event definitions, and ownership records before introducing new artifacts.
- Use the repository's established artifact names and locations. Do not impose `CONTEXT.md`, DDD terminology, or object-oriented patterns on every project.
- Propose model changes first when they would alter public contracts, data meaning, ownership, or several teams. Implement documentation or code changes only within the user's authority and request.
- Record disagreements and context-specific meanings. Do not force one enterprise-wide definition when multiple precise local models are healthier.

## Modeling workflow

1. **Recover the problem.** Translate requested screens, fields, services, rules, or technologies into business outcomes, constraints, examples, invariants, and success criteria. Preserve mandated implementation constraints with their rationale.
2. **Scope the modeling effort.** Identify the strategically difficult workflow or decision. Avoid intensive modeling for simple supporting domains that standard solutions already handle well.
3. **Build a language inventory.** Collect terms from experts, code, schemas, interfaces, tickets, reports, and operations. Mark synonyms, homonyms, missing concepts, overloaded words, and ownership ambiguity.
4. **Use concrete scenarios.** Walk happy paths, exceptions, temporal changes, authorization, cancellation, partial completion, failure, repair, and reporting. Ask what facts change and which rules must remain true.
5. **Generate alternatives.** Produce at least two lightweight models for consequential choices. Judge them by the difficult scenarios, operations, and invariants they simplify—not realism or completeness.
6. **Diagnose model friction.** Look for flag clusters, generic records, exception chains, missing domain terms, awkward state transitions, cross-cutting edits, and rules that require hidden historical state.
7. **Define context boundaries.** State where language, rules, authority, and consistency are stable. Name translations, customer-supplier relationships, shared contracts, and power or governance constraints at each edge.
8. **Connect model to implementation.** Reflect durable terms and behavior in names, types, events, tests, modules, APIs, and data ownership where useful. Keep frameworks and transport representations from becoming the domain model by default.
9. **Capture decisions.** Update the canonical glossary, context map, examples, or ADR only when the model has earned stability. Record alternatives, consequences, unresolved questions, and revisit signals.

Use [references/modeling-artifacts.md](references/modeling-artifacts.md) for session prompts and adaptable artifact templates.

## Quality gates

- Tie every important concept to scenarios, decisions, or invariants.
- Test alternatives against at least one difficult or edge scenario.
- State what the model deliberately omits.
- Make context-specific meanings and translations explicit.
- Reconcile the proposed language with code and data, or record the migration gap.
- Distinguish domain rules from workflow, presentation, persistence, and integration concerns.
- Preserve unresolved disagreement and uncertainty.

## Reject modeling theater

- Do not create noun catalogs without behavior.
- Do not convert every database table into an entity or every context into a service.
- Do not declare business language authoritative without checking actual work and exceptions.
- Do not “clean up” terminology that encodes a meaningful local distinction.
- Do not rewrite mature systems solely because a new model is more elegant; account for migration economics and compatibility.
