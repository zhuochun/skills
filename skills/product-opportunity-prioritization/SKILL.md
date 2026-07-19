---
name: product-opportunity-prioritization
description: Prioritize product opportunities and product-level bets against an explicit outcome, strategy, customer evidence, mandatory obligations, capacity, dependencies, risk, and learning horizon. Use for outcome roadmaps, feature-request backlogs that need reframing, choosing among customer problems, balancing near-term and uncertain bets, explaining why work was selected or deferred, or reviewing continue, increase, pivot, incubate, stop, and reallocate decisions. Do not use for company-wide capital portfolio governance, discovering an opportunity from scratch, or sequencing delivery after priorities are accepted.
---

# Product Opportunity Prioritization

Allocate scarce product attention and capacity through inspectable judgment. Prioritize opportunities before solutions, keep unlike bets out of one false ranking, and make the selected portfolio feasible without allowing a formula to impersonate strategy or authority.

## Preserve authority and the decision boundary

- Facilitate and recommend by default. Identify the accountable product decision owner, affected customer and business owners, product trio or technical contributors, mandatory-risk owners, and people responsible for delivery and operation. Do not silently assign priority, capacity, staffing, deadlines, or risk acceptance.
- Do not write roadmaps, close requests, change budgets, cancel work, or communicate commitments externally unless the request authorizes those effects.
- Require an explicit product scope, desired outcome, strategy boundary, audience, horizon, and available capacity. If those are missing or contested, return the smallest framing or escalation needed instead of producing an arbitrary ranking.
- Distinguish input, recommendation, constraint or veto, final decision, execution, and review rights. A score, stakeholder vote, customer count, or agent recommendation does not own the decision.
- Keep genuinely mandatory regulatory, contractual, security, safety, reliability, and end-of-life obligations visible with their authority and proportional scope. Do not make them compete as optional customer opportunities or let the word `mandatory` evade challenge.
- For `discuss`, `review`, `assess`, `prioritize`, or `plan`, stay read-only and return the recommendation, rationale, and unresolved decision needs.

## Prioritization workflow

1. **Frame the priority decision.** State the product or bounded product area, customer and business outcome, strategy and vision constraints, audience, planning horizon, decision date, available capacity, current commitments, decision owner, and consequence of delay or a wrong choice.
2. **Normalize the candidate set.** Separate customer opportunities from proposed solutions. Classify the remaining work as discretionary opportunity bets, mandatory obligations, enabling dependencies, committed carryover, or risk reduction. Split compound entries and deduplicate requests that point to the same underlying opportunity.
3. **Recover evidence and uncertainty.** For each opportunity, record customer importance, circumstance, prevalence confidence, urgency, strategic fit, expected outcome leverage, current behavior, adoption or commercial evidence, evidence freshness, and key unknowns. For each non-opportunity item, state the obligation, failure or enablement mechanism, authority, deadline, and smallest sufficient scope.
4. **Choose comparable decision groups.** Separate candidates by decision unit, horizon, ambition, risk class, and evidence maturity before applying common criteria. Near-term core improvements, adjacent expansion, and transformational bets may need different evidence, funding protection, metrics, and review cadence. Do not force all work onto one commensurable scale or prescribe a universal portfolio ratio.
5. **Expose judgment with decision aids.** Use impact, confidence, effort, reversibility, option value, learning value, time sensitivity, dependencies, and risk as inspectable inputs where relevant. Preserve definitions, assumptions, ranges, and missing dimensions. A composite score may organize sufficiently similar candidates; it cannot choose across strategy, horizons, or hard constraints without accountable recomposition.
6. **Build a feasible product portfolio.** Reserve or expose capacity for mandatory obligations and enabling work, then compare opportunity bets against the remaining capacity. Check skills, dependencies, integration points, technical risk, operational readiness, and likely iteration needs. Effort constrains feasibility and portfolio shape; easy work does not become valuable merely because it is easy.
7. **Compare options and opportunity cost.** For each plausible portfolio, explain which outcomes it intends to move; which strategy, vision, customer, or business rationale supports it now; what it protects across horizons; which work is displaced; and which assumptions could reverse the choice. Include a smaller portfolio and the status quo when they are credible options.
8. **Close or escalate deliberately.** Surface disagreement about evidence, weights, constraints, and time horizon. Apply the declared decision rule and record selected, deferred, discovery-needed, incubated, rejected, and mandatory work with rationale. If authority, strategy, capacity, or decisive evidence is missing, return a bounded escalation or discovery request rather than a fabricated priority.
9. **Attach an evidence-matched review.** Give each material bet a stable key and label, such as `PRI-checkout-recovery — Reduce failed-checkout abandonment`. State its hypothesis, evidence window, owner, next decision point, and early triggers for major disconfirmation, risk, dependency, or constraint change. At review, choose continue, increase, pivot, incubate, stop, or reallocate—not merely report status.
10. **Route the accepted direction.** Send weakly framed or weakly evidenced opportunities to `product-opportunity-discovery`. Send accepted but behaviorally ambiguous changes to `software-change-specification`, multi-workstream outcomes to `technical-program-orchestration`, consequential transitions to `migration-planning`, changed shared interfaces to `software-contract-evolution`, and clear bounded implementation to `scoped-change-implementation`. Prioritization does not take over those specification or orchestration contracts.

## Keep prioritization and discovery connected

- Discovery maps and tests customer opportunities and solution directions; prioritization decides which sufficiently framed opportunities and bets receive attention now.
- Prioritization may fund a discovery slice instead of a full solution when uncertainty is material. Discovery results may reframe, split, merge, strengthen, or remove an opportunity and reopen the decision.
- Do not require a new handoff artifact. Cite each `DSC-*` hypothesis with its plain-language label in the existing roadmap or decision surface, and preserve evidence links and limitations.

## Quality gates

- One product scope, desired outcome, strategy boundary, horizon, capacity boundary, and accountable decision owner are explicit.
- Opportunities are distinct from solutions, and optional bets are distinct from mandatory, enabling, carryover, and risk-reduction work.
- Evidence quality, prevalence confidence, freshness, assumptions, and unknowns are visible.
- Candidates are compared only within a defensible decision group, or cross-group judgment is explained without false numerical precision.
- The recommendation considers customer value, strategy, feasibility, dependencies, technical and operational risk, learning, and displaced work.
- The selected set fits stated capacity or names the capacity decision still required.
- Chosen, deferred, discovery-needed, incubated, rejected, and mandatory items have inspectable rationale.
- Material bets have evidence windows, owners, stop or revision triggers, and a next decision rather than an immutable roadmap promise.
- The recommendation does not claim company-wide portfolio validity beyond the bounded product scope and evidence.

## Reject prioritization theater

- Do not rank feature requests before recovering and choosing the opportunities they represent.
- Do not use customer votes, executive sponsorship, competitor parity, or sales volume as sole priority authority.
- Do not let RICE, WSJF, ROI, or another composite score hide strategy, subjective inputs, incomparable horizons, or missing constraints.
- Do not reward low-effort, high-confidence incremental work until uncertain but important bets disappear from the portfolio.
- Do not call every preferred technical improvement or stakeholder request mandatory; name the obligation and proportional consequence.
- Do not explain a predetermined feature list after the fact and call the rationale strategy.
- Do not turn annual direction into detailed solution commitments that cannot change with discovery.
- Do not kill a long-horizon bet before its evidence can mature or protect it indefinitely from learning and stop decisions.
- Do not review priorities more often than the credible learning cycle merely to create visible motion.
- Do not report a portfolio as feasible while omitting capacity, dependencies, iteration, enabling work, or operating obligations.

## Completion

Return the priority frame and authority, normalized candidate set, evidence and uncertainty, comparable groups, decision criteria, feasible portfolio options, selected and non-selected dispositions with rationale, displaced work, evidence-matched review triggers, and routed next work. Distinguish a recommendation from an authorized roadmap decision and state what evidence could change it.
