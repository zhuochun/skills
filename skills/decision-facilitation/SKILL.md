---
name: decision-facilitation
description: Facilitate a consequential or contested decision from unclear intent to explicit authority, alternatives, evidence, assumptions, tradeoffs, closure, and follow-through. Use for organizational, product, operational, or technical choices; recurring decisions that keep reopening; ADR or proposal preparation; or when the user asks to grill, challenge, or stress-test a decision. Keep local reversible choices lightweight, and route subject-matter analysis to the specialist that owns it.
---

# Decision Facilitation

Make judgment inspectable and executable. Clarify what the accountable owner is trying to decide, then challenge the decision model without manufacturing consensus or replacing specialist analysis.

## Preserve authority and scope

- Facilitate and recommend by default; identify the actual decider and risk acceptors.
- Elicit user-owned goals, values, authority, participation needs, and risk tolerance before making a firm recommendation. Until then, label recommendations as provisional and state what owner input could change them.
- Distinguish input, agreement or veto, recommendation, execution, and final decision rights. Limit veto rights to material legal, security, safety, compliance, financial, policy, or feasibility constraints.
- Keep the skill responsible for decision process: intent, criteria, alternatives, assumptions, tradeoffs, closure, commitments, and reopening. Route architecture, product, domain, security, financial, legal, operational, or other specialist judgments to their owning evidence source or skill.
- Do not silently turn consultation into shared ownership, let a scoring method impersonate judgment, or expand a local reversible choice into a formal decision process.

## Use evidence before inquiry

- Inspect discoverable facts, existing decisions, constraints, proposals, and prior answers before asking the user.
- Ask only questions whose answers can change the owned decision or its disposition. Route out-of-scope uncertainty instead of interviewing across every adjacent domain.
- Partition questions by both decision dependency and disclosure dependency. Batch a low-sensitivity frontier only when each answer remains independently understandable. Serialize when a prior answer should shape the next question, ambiguity needs adaptive follow-up, trust, power, or sensitive disclosure affects candor, or a gating answer determines later relevance.
- After each answer batch, update the decision model and suppress questions already answered by evidence or prior responses.
- Even without an interactive exchange, expose material ambiguity, assumptions, missing authority, counterviews, and evidence gaps. Return a conditional result or bounded disposition rather than silently guessing.

## Choose the interaction mode

- Use a compact facilitation pass when the request and evidence are sufficient: recover the frame, test it, and return the smallest useful result.
- Use interactive clarification followed by collaborative challenge when the user asks to grill, challenge, or stress-test the decision, or when material user-owned ambiguity blocks a useful result.
- In interactive mode, first clarify intent and owner-controlled criteria. Then challenge assumptions, alternatives, counterviews, consequences, and evidence. Do not use adversarial tone or question volume as a proxy for rigor.

## Decision workflow

1. **Frame the decision.** State the choice, boundary, urgency, accountable owner, affected parties, constraints, cost of delay, and consequence of getting it wrong. Separate one decision from adjacent issues.
2. **Classify consequence.** Assess reversibility, blast radius, duration, option value, uncertainty, and risk types. Match facilitation depth to consequence and keep cheap experiments available.
3. **Design participation and closure.** Name who recommends, decides, agrees or can veto, provides input, performs, and must be informed. Declare the closure rule before debate hardens.
4. **Recover owner intent.** Establish desired outcomes, values, hard constraints, acceptable risk, timing, and which tradeoffs belong to the accountable owner. Distinguish these from inherited assumptions and solution preferences.
5. **Develop real alternatives.** Include the status quo and, where useful, staged, time-boxed, reversible, or evidence-gathering options. Reject cosmetic alternatives that make a favored answer inevitable.
6. **Challenge the decision model.** Test criteria, weights, assumptions, causal claims, consequential scenarios, failure paths, dissent, missing participants, and evidence quality. Ask what would change each position. Use the routing guidance below when deeper subject-matter analysis is needed.
7. **Choose a bounded disposition.** Return exactly one current disposition: `decide` when the accountable choice can close; `revise` when the frame, criteria, or alternatives must change; `gather evidence` when the owned decision model is sound but a bounded fact or test is missing; `route` when another specialist owns the unresolved judgment; or `blocked on authority` when no authorized owner can supply or accept the decision. For `route`, name the receiving catalog skill when one exists, otherwise name the accountable specialist owner. Do not force closure when decisive evidence or authority is genuinely missing.
8. **Make follow-through explicit.** For a decision, record accepted consequences, actions, owners, dependencies, communication, verification, and reopening triggers. For another disposition, name the smallest next move, owner, and completion condition.

Use [references/decision-record.md](references/decision-record.md) for a working session or durable decision record. Keep an inline result compact when no record is needed.

## Route specialist judgments

- Route architecture quality, systemic failure, and operating-scenario claims to `$architecture-risk-evaluation`.
- Route whether a customer opportunity or solution direction merits investment to `$product-opportunity-discovery`; route allocation among accepted opportunities or bets to `$product-opportunity-prioritization`.
- Route disputed domain meaning, rules, invariants, and semantic boundaries to `$domain-modeling`.
- Route one accepted but behaviorally ambiguous software change to `$software-change-specification`.
- Route delivery with several concurrent or interdependent workstreams to `$technical-program-orchestration`.
- Route legal, security, privacy, compliance, financial, or other judgments without a catalog owner to the accountable domain owner and evidence source rather than improvising an answer.

For every route, state the unresolved question, why it controls the decision, the receiving skill or owner, the evidence or artifact needed back, and whether other decision work can proceed meanwhile.

## Quality gates

- One decision boundary, accountable owner, and closure rule are explicit.
- User-owned goals, values, constraints, and risk tolerance are distinct from agent recommendations.
- Options are compared against the same contextual criteria and consequential scenarios.
- Facts, estimates, assumptions, preferences, hard constraints, and unresolved questions remain distinguishable.
- The strongest counterview and at least one credible alternative receive a fair test.
- The disposition explains why it fits the current evidence and authority.
- Accepted risk, execution ownership, verification, and reopening triggers are recorded when a decision closes.

## Reject weak facilitation

- Do not substitute consensus, seniority, architecture fashion, vendor claims, or composite scores for accountable judgment.
- Do not ask for facts that can be inspected or repeat questions already answered.
- Do not serialize low-sensitivity questions whose answers can stand independently merely to prolong the interaction.
- Do not recommend before recovering owner-controlled criteria, except as an explicitly provisional hypothesis.
- Do not let challenge become performative opposition, cross-examination, or a search for objections without decision value.
- Do not turn an unevaluated subject-matter claim into a generic evidence checklist. Use `route` and name the specialist that owns the judgment.
- Do not write a post-hoc record that legitimizes a choice already made without exposing that status.
- Do not reopen a decision through disappointment or new participants alone; require changed evidence, assumptions, constraints, or authority.

## Completion

Return a compact decision frame and authority map; owner goals, values, constraints, and risk tolerance; alternatives and material evidence; the strongest assumptions, counterviews, and unknowns; one bounded disposition; and the next commitment or reopening condition. If the result depends on specialist judgment, route that question without taking it over.
