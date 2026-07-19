---
name: product-opportunity-discovery
description: Discover and test which customer opportunity and solution direction merits product investment before heavy implementation. Use when feature requests arrive as proposed solutions, customer or stakeholder evidence conflicts, a team needs an outcome and opportunity model, continuous customer learning, assumption mapping, prototype or product-experiment design, comparison of multiple solutions, or an evidence-based learn, narrow, pivot, stop, or proceed recommendation. Do not use for roadmap allocation across already-framed opportunities or implementation of accepted work.
---

# Product Opportunity Discovery

Reduce uncertainty about the customer, problem, behavior, value mechanism, and solution direction before implementation effort and organizational commitment become expensive. Treat discovery as a continuing decision loop, not a validation phase that exists to approve a favored idea.

## Preserve authority and evidence integrity

- Analyze and recommend by default. Do not contact customers, recruit participants, run experiments, expose prototypes, change production telemetry, or promise delivery without explicit authorization.
- Identify the accountable product decision owner and the smallest cross-functional decision group with customer, product, design, engineering, data, operational, commercial, or policy knowledge relevant to the choice. Do not turn consultation into consensus authority.
- Respect privacy, consent, accessibility, fairness, security, regulatory, and research-governance constraints. Bound customer and production exposure before running a probe.
- Separate observations, interpretations, hypotheses, and decisions. Mark source population, selection bias, recency, disagreement, and missing evidence rather than converting anecdotes into prevalence.
- Preserve the existing strategy, product outcome, and mandatory constraints as inputs. Surface their absence or conflict instead of inventing strategy through a discovery exercise.
- For `discuss`, `review`, `assess`, `design`, or `plan`, stay read-only and return the discovery decision and next learning move.

## Discovery workflow

1. **Frame the decision.** State the desired customer and business outcome, product boundary, audience and circumstance, decision to be made, deadline or runway, consequence of being wrong, current commitment, decision owner, and what discovery deliberately will not answer.
2. **Recover existing evidence.** Inspect customer behavior, interviews, support and sales material, analytics, experiments, market or competitor evidence, product constraints, prior decisions, and abandoned attempts. Classify evidence as direct observation, reported preference, behavioral measurement, inference, or unknown; preserve contradictions and freshness limits.
3. **Recover the opportunity from proposed solutions.** Translate requested features, screens, automations, technologies, and competitor copies into the customer job, need, pain, desire, or outcome they might address. Keep real contractual, legal, safety, reliability, or platform constraints explicit without letting one implementation become the problem definition.
4. **Map the opportunity space.** Connect the desired outcome to affected customer segments and circumstances, candidate opportunities, available evidence, prevalence confidence, urgency, and strategic relevance. Keep opportunity choice distinct from solution comparison. Use `product-opportunity-prioritization` when several sufficiently framed opportunities compete for attention.
5. **Write inspectable hypotheses.** Give each material claim a stable key and label, such as `DSC-repeat-purchase — Faster replenishment increases repeat purchase`. State the audience, proposed change or mechanism, expected behavior or outcome, magnitude or directional expectation, evidence window, and assumptions about value, usability, feasibility, ethics, adoption, and business fit.
6. **Generate real alternatives.** For a selected opportunity, develop materially different interventions, including a no-build, service, process, communication, policy, or operational option when plausible. Use customer, design, engineering, data, commercial, and outside perspectives to avoid merely polishing the first idea.
7. **Choose the uncertainty to retire next.** Identify the assumption whose failure would most change the decision. Match the evidence method to that uncertainty: observation and interviews for context, representative research or measurement for prevalence, story or prototype for coherence and usability, technical spike for feasibility, concierge or Wizard-of-Oz work for value mechanism, smoke test for demand, beta for strategic cohort fit, or production experiment for behavior after safer evidence is insufficient.
8. **Preserve the tested mechanism.** Make the smallest learning artifact that still exercises the value-producing behavior, decision, or interaction. State what the artifact omits and why those omissions do not invalidate the targeted learning. A polished but behaviorally empty prototype is not cheap evidence.
9. **Define the evidence and decision contract.** Specify population, recruitment or assignment, observation boundary, metric semantics, qualitative interpretation, expected volume, comparison, confounders, guardrails, duration, success, disconfirmation, inconclusive result, and stop conditions. Use `observability-design` for production measurement contracts and `controlled-release-design` for governed exposure; do not duplicate their control systems here.
10. **Run and update the loop when authorized.** Preserve the actual method, context, deviations, raw evidence location, and counterexamples. Compare results with the hypothesis without moving the threshold after seeing the data. Update the opportunity model as well as the solution; a failed solution may expose a badly framed opportunity rather than merely require another feature variation.
11. **Make a bounded disposition.** Recommend learn more, narrow, reframe, compare another solution, pivot, stop, seek prioritization, or proceed to an accountable investment decision. State what the evidence supports, what it cannot establish, and what changed from the prior view. Do not call a direction validated or proven merely because one probe was encouraging.

## Compose without losing ownership

- `product-opportunity-prioritization` owns allocation among framed opportunities and product-level bets. Discovery supplies evidence and receives weak or contradicted bets back for another learning loop.
- `domain-modeling` owns complex business meaning, behavior, rules, and invariants after or alongside opportunity framing; customer desirability does not determine the correct software model.
- `technical-program-orchestration` owns multi-workstream delivery coordination after an outcome and investment direction are accepted. Discovery does not create delivery commitments.
- `controlled-release-design` owns production exposure, cohort assignment, promotion, abort, and cleanup. `observability-design` owns deployed signal semantics and navigation.
- `verification-strategy-design` owns evidence for software correctness, resilience, migration, and other engineering claims. This skill owns evidence for customer opportunity, product value, usability, adoption, and solution-direction hypotheses.

Keep the discovery state in the team's existing product, research, or decision surface when authorized. Otherwise return a compact result that can be applied there; do not create a mandatory handoff document.

## Quality gates

- The decision, desired outcome, product boundary, audience, and accountable owner are explicit.
- Proposed solutions have been separated from the underlying opportunity and genuine constraints.
- Customer context, reported preference, behavioral evidence, prevalence, and inference are not conflated.
- The most decision-relevant assumptions and counterevidence are visible.
- Solution comparison uses materially different alternatives for one opportunity when comparison is the current decision.
- The selected learning method can credibly test the named uncertainty, and the artifact preserves the mechanism under test.
- Metrics and observations define population, event or behavior, denominator, time window, missing evidence, and decision use.
- Success, disconfirmation, inconclusive results, safety stops, and evidence limitations are defined before execution.
- The disposition follows the evidence and names what remains unknown, rather than manufacturing certainty or delivery authority.

## Reject discovery theater

- A customer request, sales escalation, competitor feature, or executive idea is evidence—not the opportunity or solution by itself.
- Interviews and support streams build context but do not establish prevalence without an appropriate sampling or measurement system.
- Asking whether customers like a favored design is not comparison or falsification.
- A high-fidelity prototype does not prove value when it omits the behavior that creates value.
- Surveyed intention is not observed adoption, and one successful cohort is not every target segment.
- A/B testing is not the default discovery method when it requires building the uncertain solution first.
- Weekly interviews are activity unless they change an opportunity, hypothesis, solution, or decision.
- Discovery is not complete because a presentation looks coherent or stakeholders feel confident.

## Completion

Return the decision frame, evidence inventory and limitations, opportunity model, named hypotheses, alternative solutions, next learning test or executed result, evidence-based disposition, unresolved uncertainty, and routed follow-up. Make clear whether the work is opportunity discovery, solution comparison, experiment design, evidence interpretation, or an investment-readiness recommendation.
