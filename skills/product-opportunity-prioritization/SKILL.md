---
name: product-opportunity-prioritization
description: Prioritize product opportunities and bets against explicit outcomes, strategy, customer evidence, obligations, capacity, dependencies, risk, and learning horizon. Use for outcome roadmaps, reframing feature backlogs, choosing among customer problems, balancing near-term and uncertain bets, or reviewing allocation. Exclude company-wide capital governance, discovery from scratch, and delivery sequencing after priorities are accepted.
---

# Product Opportunity Prioritization

Allocate scarce product attention and capacity through inspectable judgment. Prioritize opportunities before solutions, keep unlike bets out of one ranking, and do not let formulas impersonate strategy or authority.

## Preserve authority and the decision boundary

- Facilitate and recommend by default. Identify the product decision owner, affected customer and business owners, contributors, mandatory-risk owners, and delivery and operation owners. Do not silently assign priority, capacity, staffing, deadlines, or risk acceptance.
- Do not write roadmaps, close requests, change budgets, cancel work, or communicate commitments externally unless the request authorizes those effects.
- Require product scope, outcome, strategy boundary, audience, horizon, and capacity. If missing or contested, return the smallest framing or escalation instead of ranking.
- Separate input, recommendation, constraint, decision, execution, and review rights. Scores, votes, customer counts, and agents do not own decisions.
- Keep genuine regulatory, contractual, security, safety, reliability, and end-of-life obligations visible with authority and proportional scope. Do not rank them as optional opportunities or let `mandatory` evade challenge.
- For `discuss`, `review`, `assess`, `prioritize`, or `plan`, stay read-only and return the recommendation, rationale, and unresolved decision needs.

## Prioritization workflow

1. **Frame the decision.** State product boundary, customer and business outcome, strategy constraints, audience, horizon, decision date, capacity, commitments, owner, and cost of delay or error.
2. **Normalize the candidate set.** Separate customer opportunities from proposed solutions. Classify the remaining work as discretionary opportunity bets, mandatory obligations, enabling dependencies, committed carryover, or risk reduction. Split compound entries and deduplicate requests that point to the same underlying opportunity.
3. **Recover evidence and uncertainty.** For opportunities, record importance, circumstance, prevalence confidence, urgency, strategic fit, leverage, current behavior, adoption or commercial evidence, freshness, and unknowns. For other work, state mechanism, authority, deadline, and smallest sufficient scope.
4. **Choose comparable groups.** Separate candidates by decision unit, horizon, ambition, risk class, and evidence maturity. Core improvements, adjacent expansion, and transformational bets may need different evidence, funding protection, metrics, and cadence. Do not force one scale or portfolio ratio.
5. **Expose judgment.** Use relevant impact, confidence, effort, reversibility, option and learning value, time sensitivity, dependencies, and risk. Preserve definitions, assumptions, ranges, and omissions. Scores may organize similar candidates, not decide across strategy, horizons, or constraints. For a proposed core bet, estimate the target delta and units, horizon, plausible contribution range, dominant assumptions, and overlapping contributions. If it cannot plausibly explain a material share, it loses core-bet status; reclassify it using the normalized portfolio roles. A binding obligation or enabling dependency may still deserve priority without becoming the growth thesis.
6. **Build a feasible portfolio.** Reserve or expose capacity for obligations and enablement, then compare opportunity bets against the remainder. Check skills, dependencies, integration, technical risk, operations, and iteration. Effort constrains feasibility; ease does not create value.
7. **Compare portfolios and opportunity cost.** Explain intended outcomes, supporting strategy and evidence, horizon protection, displaced work, and reversal assumptions. Include a smaller portfolio and status quo when credible.
8. **Close or escalate.** Surface disagreement about evidence, weights, constraints, and horizon. Apply the decision rule and record `selected`, `deferred`, `discovery-needed`, `incubated`, `rejected`, and `mandatory` work with rationale. If authority, strategy, capacity, or decisive evidence is missing, return a bounded escalation or discovery request.
9. **Attach evidence-matched review.** Give material bets stable keys and labels with hypothesis, evidence window, owner, next decision, and early triggers for disconfirmation, risk, dependency, or constraint change. Review to continue, increase, pivot, incubate, stop, or reallocate.
10. **Route the accepted direction.** Send weak opportunities to `product-opportunity-discovery`; ambiguous accepted changes to `software-change-specification`; multi-workstream outcomes to `technical-program-orchestration`; targets requiring material technical movement, controlled transition states, authority transfer, retireability, and retirement to `migration-planning`; shared-interface changes to `software-contract-evolution`; and clear bounded implementation to `scoped-change-implementation`. Prioritization does not take over those contracts.

## Keep prioritization and discovery connected

Discovery tests opportunities and solutions; prioritization allocates attention among sufficiently framed bets. Fund discovery for material uncertainty and reopen priority when evidence reframes the opportunity. Cite `DSC-*` hypotheses with labels, links, and limits in the existing surface; require no handoff artifact.

## Quality gates

- Scope, outcome, strategy, horizon, capacity, and decision owner are explicit. Opportunities differ from solutions; optional bets differ from obligations, enablement, carryover, and risk reduction.
- Evidence quality, prevalence, freshness, assumptions, and unknowns are visible.
- Comparisons use defensible groups or explain cross-group judgment without false precision.
- The portfolio covers value, strategy, feasibility, dependencies, risk, learning, displaced work, and capacity.
- Every disposition has rationale; material bets have evidence windows, owners, revision triggers, and a next decision.
- Claims remain within the bounded product scope and evidence.

## Reject prioritization theater

- Do not rank requests before recovering opportunities, or let votes, sponsorship, parity, sales, or a formula become authority. Do not optimize for easy certainty until important uncertain bets disappear.
- Mandatory work needs a real obligation and proportional consequence.
- Do not rationalize a predetermined list or freeze annual direction into detailed solutions.
- Give long-horizon bets enough time to learn, but retain stop decisions.
- Review on credible learning cycles and never claim feasibility without capacity, dependencies, iteration, enablement, and operations.

## Completion

Return the priority frame and authority, normalized candidate set, evidence and uncertainty, comparable groups, decision criteria, feasible portfolio options, selected and non-selected dispositions with rationale, displaced work, evidence-matched review triggers, and routed next work. Distinguish a recommendation from an authorized roadmap decision and state what evidence could change it.
