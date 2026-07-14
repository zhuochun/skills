---
name: drive-technical-decisions
description: Drive consequential technical decisions from an ambiguous or contested choice to explicit authority, evidence, tradeoffs, commitment, and follow-through. Use for cross-team technology choices, architecture or platform decisions, standards, build-versus-buy questions, recurring decisions that keep reopening, ADR preparation, or meetings where many people advise but no one can close. Do not use for a purely local reversible implementation choice or when the primary need is deep architecture-risk discovery rather than decision closure.
---

# Drive Technical Decisions

Make technical judgment inspectable and executable. Do not manufacture consensus or let a score, committee, or document impersonate the accountable decision maker.

## Preserve authority

- Facilitate and recommend by default; identify the actual decider and risk acceptors.
- Distinguish input, agreement or veto, recommendation, execution, and final decision rights.
- Limit veto rights to material legal, security, safety, compliance, financial, or feasibility constraints.
- Do not silently turn broad consultation into shared ownership or formal approval.

## Decision workflow

1. **Frame the decision.** State the choice, boundary, urgency, decision owner, affected systems and teams, constraints, and the cost of no decision. Separate one decision from adjacent issues.
2. **Classify consequence.** Assess reversibility, blast radius, duration, option value, uncertainty, and the risk types involved. Keep low-consequence reversible choices lightweight.
3. **Design participation.** Name who recommends, decides, agrees, provides input, performs, and must be informed. Explain why each participant has information, authority, risk, or execution relevance.
4. **Establish decision criteria.** Connect criteria to business outcomes, user promises, engineering constraints, operating responsibility, and accepted policy. Keep weights, assumptions, and missing evidence visible.
5. **Develop real options.** Include the status quo and, where useful, staged, time-boxed, or reversible options. Reject cosmetic alternatives that make one favored answer inevitable.
6. **Test tradeoffs.** Trace important scenarios and failure conditions. Use rough models, prototypes, historical evidence, or `$evaluate-architecture-risks` when architecture assumptions need deeper examination.
7. **Run closure.** Surface disagreement, ask what evidence would change each position, distinguish hard constraints from preferences, and apply the declared closure rule. Record dissent without extending debate indefinitely.
8. **Make execution part of the decision.** Assign actions, owners, dependencies, communication, verification, and any migration or rollout work. A decision without an execution path remains a proposal.
9. **Record and revisit deliberately.** Capture rationale, rejected options, accepted consequences, evidence, expiry conditions, and explicit reopening triggers. Do not reopen merely because participants changed.

Use [references/technical-decision-record.md](references/technical-decision-record.md) for the working session and final record.

## Quality gates

- One decision and one accountable closure rule are explicit.
- Affected operators and implementers can influence the decision before closure.
- Options are compared against the same contextual criteria and consequential scenarios.
- Facts, estimates, assumptions, preferences, and hard constraints remain distinguishable.
- The final rationale explains why this option fits now, not why it is universally best.
- Accepted risk, execution ownership, verification, and reopening triggers are recorded.

## Reject weak decision work

- Consensus as a substitute for authority.
- Architecture fashion, vendor claims, or seniority as sufficient evidence.
- Composite scores that hide judgment in weights or inputs.
- Participation lists with no decision rights or closure rule.
- ADRs written after implementation to legitimize an irreversible choice.
- Reopening through hallway disagreement instead of named new evidence or changed constraints.

## Completion

Return the decision frame, participant and authority map, option comparison, material evidence and unknowns, final decision or named blocker, accepted consequences, execution commitments, and revisit conditions. If authority or decisive evidence is genuinely missing, return a bounded escalation or evidence plan rather than a fabricated conclusion.
