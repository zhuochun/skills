---
name: product-opportunity-discovery
description: Discover and test which customer opportunity and solution direction merits investment before heavy implementation. Use for solution-shaped feature requests, conflicting customer evidence, opportunity models, assumption mapping, prototypes, experiments, or comparisons among solutions. Produce an evidence-based learn, narrow, pivot, stop, or proceed recommendation; exclude roadmap allocation and implementation of accepted work.
---

# Product Opportunity Discovery

Reduce uncertainty about the customer, problem, behavior, value mechanism, and solution direction before implementation effort and organizational commitment become expensive. Treat discovery as a continuing decision loop, not a validation phase that exists to approve a favored idea.

## Preserve authority and evidence integrity

- Analyze and recommend by default. Do not contact customers, recruit participants, run experiments, expose prototypes, change production telemetry, or promise delivery without explicit authorization.
- Identify the product decision owner and smallest cross-functional group with relevant customer, product, design, engineering, data, operations, commercial, or policy knowledge. Consultation is not consensus authority.
- Respect privacy, consent, accessibility, fairness, security, regulatory, and research-governance constraints. Bound customer and production exposure before running a probe.
- Separate observation, interpretation, hypothesis, and decision. Mark population, bias, recency, disagreement, and missing evidence; anecdotes do not establish prevalence.
- Preserve the existing strategy, product outcome, and mandatory constraints as inputs. Surface their absence or conflict instead of inventing strategy through a discovery exercise.
- For `discuss`, `review`, `assess`, `design`, or `plan`, stay read-only and return the discovery decision and next learning move.

## Discovery workflow

1. **Frame the decision.** State customer and business outcome, product boundary, audience and circumstance, decision, runway, cost of error, current commitment, owner, and deliberate exclusions.
2. **Recover evidence.** Inspect behavior, interviews, support and sales material, analytics, experiments, market evidence, constraints, prior decisions, and abandoned attempts. Classify direct observation, preference, behavioral measure, inference, and unknown; preserve contradictions and freshness.
3. **Recover the opportunity from proposed solutions.** Translate requested features, screens, automations, technologies, and competitor copies into the customer job, need, pain, desire, or outcome they might address. Keep real contractual, legal, safety, reliability, or platform constraints explicit without letting one implementation become the problem definition.
4. **Map the opportunity space.** Connect the desired outcome to affected customer segments and circumstances, candidate opportunities, available evidence, prevalence confidence, urgency, and strategic relevance. Keep opportunity choice distinct from solution comparison. Use `product-opportunity-prioritization` when several sufficiently framed opportunities compete for attention.
5. **Write inspectable hypotheses.** Give material claims stable keys and labels. State audience, change or mechanism, expected behavior or outcome, direction or magnitude, evidence window, and assumptions about value, usability, feasibility, ethics, adoption, and business fit.
6. **Generate real alternatives.** For a selected opportunity, develop materially different interventions, including a no-build, service, process, communication, policy, or operational option when plausible. Use customer, design, engineering, data, commercial, and outside perspectives to avoid merely polishing the first idea.
7. **Retire the decisive uncertainty.** Match the assumption most likely to change the decision with evidence: observation for context, representative research for prevalence, prototypes for coherence and usability, spikes for feasibility, concierge or Wizard-of-Oz work for value, smoke tests for demand, betas for cohort fit, or production experiments only when safer evidence is insufficient.
8. **Preserve the tested mechanism.** Make the smallest learning artifact that still exercises the value-producing behavior, decision, or interaction. State what the artifact omits and why those omissions do not invalidate the targeted learning. A polished but behaviorally empty prototype is not cheap evidence.
9. **Define the evidence contract.** Specify population, recruitment or assignment, observation boundary, metric semantics, qualitative interpretation, volume, comparison, confounders, guardrails, duration, success, disconfirmation, inconclusive result, and stop conditions. Route production measurement to `observability-design` and exposure to `controlled-release-design`.
10. **Run and update the loop when authorized.** Preserve the actual method, context, deviations, raw evidence location, and counterexamples. Compare results with the hypothesis without moving the threshold after seeing the data. Update the opportunity model as well as the solution; a failed solution may expose a badly framed opportunity rather than merely require another feature variation.
11. **Make a bounded disposition.** Recommend learn more, narrow, reframe, compare another solution, pivot, stop, seek prioritization, or proceed to an accountable investment decision. State what the evidence supports, what it cannot establish, and what changed from the prior view. Do not call a direction validated or proven merely because one probe was encouraging.

## Compose without losing ownership

- `product-opportunity-prioritization` owns allocation; discovery supplies evidence and reopens weak bets.
- `domain-modeling` owns business meaning and invariants; desirability does not determine the software model.
- `technical-program-orchestration` owns accepted multi-workstream delivery; discovery creates no delivery commitment.
- `controlled-release-design` owns exposure and cleanup; `observability-design` owns deployed signals.
- `verification-strategy-design` owns engineering evidence; this skill owns customer opportunity, value, usability, adoption, and solution hypotheses.

Keep the discovery state in the team's existing product, research, or decision surface when authorized. Otherwise return a compact result that can be applied there; do not create a mandatory handoff document.

## Quality gates

- Decision, outcome, boundary, audience, and owner are explicit.
- Solutions are separated from opportunity and genuine constraints.
- Context, preference, behavior, prevalence, inference, assumptions, and counterevidence remain distinct.
- Comparisons use real alternatives; the method tests the named uncertainty and preserves its mechanism.
- Metrics define population, behavior, denominator, window, gaps, and decision use.
- Success, disconfirmation, inconclusive results, safety stops, and limits precede execution.
- Disposition follows evidence without inventing certainty or delivery authority.

## Reject discovery theater

- Requests, escalations, competitors, and executive ideas are evidence, not opportunity or solution.
- Interviews provide context, not prevalence without sampling or measurement.
- Asking whether users like a favorite design is not falsification; fidelity cannot replace the value mechanism.
- Intent is not adoption; one cohort is not every segment; A/B tests are not default when they require building first.
- Activity, polished presentations, and stakeholder confidence do not complete discovery.

## Completion

Return the decision frame, evidence inventory and limitations, opportunity model, named hypotheses, alternative solutions, next learning test or executed result, evidence-based disposition, unresolved uncertainty, and routed follow-up. Make clear whether the work is opportunity discovery, solution comparison, experiment design, evidence interpretation, or an investment-readiness recommendation.
