---
name: architecture-risk-evaluation
description: Evaluate software architecture by translating business drivers and quality goals into prioritized, falsifiable scenarios and tracing them through components, data, deployment, dependencies, and operating procedures. Use for architecture proposals, design reviews, modernization programs, major technology choices, vague scalability or availability claims, cross-team tradeoffs, or ADR preparation before consequential decisions harden.
---

# Architecture Risk Evaluation

Expose which architectural decisions and assumptions control outcomes that matter. Produce risks, sensitivities, tradeoffs, and an evidence plan—not a generic architecture score or approval ceremony.

## Preserve decision ownership

- Facilitate and analyze by default. Do not present the review as formal approval unless the organization's governance process grants that authority.
- Include affected product, engineering, operations, security, data, compliance, support, and platform perspectives proportionately.
- Record absent stakeholders and contested priorities rather than manufacturing consensus.

## Clarify and challenge with scenarios

- Inspect the architecture, decisions, operating evidence, and known constraints before asking stakeholders. Even without an interactive exchange, expose material ambiguity, assumptions, sensitivities, failure paths, and evidence gaps.
- Use interactive clarification when the user asks to grill, challenge, or stress-test the architecture, or when owner-controlled drivers or risk tolerance materially block the evaluation.
- Ask only questions that can change outcomes, priorities, boundaries, sensitivities, tradeoffs, assumptions, or evidence. Batch independent low-sensitivity questions; serialize when earlier answers shape later scenarios, ambiguity needs follow-up, sensitivity affects candor, or a gate controls relevance.
- Clarify drivers and owner-controlled constraints first, then challenge the architecture through consequential scenarios, counter-assumptions, failure and recovery paths, and credible alternatives. Route accountable closure to `decision-facilitation` rather than making the evaluation vote on its own findings.

## Evaluation workflow

1. **Frame the decision.** State the system boundary, lifecycle stage, decision owner, business drivers, constraints, alternatives, and reversibility.
2. **Identify stakeholders and qualities.** Connect qualities such as availability, modifiability, performance, security, interoperability, cost, and operability to stakeholder outcomes.
3. **Write scenarios.** Specify source, stimulus, environment, affected artifact, expected response, and measure. Include use, growth, change, failure, recovery, and exploration.
4. **Prioritize.** Rank scenarios by business importance and architectural risk. Resolve missing evidence before allowing numeric scoring to create false precision.
5. **Describe the architecture.** Use views whose elements, relationships, scope, data ownership, and deployment meaning are explicit enough to trace scenarios.
6. **Trace scenarios.** Follow each high-priority scenario through modules, services, connectors, processes, data, infrastructure, controls, teams, and operational procedures.
7. **Identify findings.** Record risks, non-risks, sensitivity points, tradeoff points, assumptions, and unknowns. Explain which architectural parameter controls the response.
8. **Compare options.** Weight consequences by current drivers and constraints; use rough models or prototypes to eliminate implausible options cheaply.
9. **Plan evidence and decisions.** Define tests, experiments, measurements, rollout evidence, or operational signals needed. Preserve consequential decisions and accepted consequences in an ADR or equivalent record.

## Classify findings

- **Risk:** An architectural decision or assumption may prevent the required response.
- **Non-risk:** Current evidence supports the response under named assumptions.
- **Sensitivity:** A small parameter change strongly alters the response.
- **Tradeoff:** One parameter improves one quality while worsening another.
- **Unknown:** Evidence is insufficient to classify the response.

## Quality gates

- Prioritized qualities tie to stakeholder drivers and refutable observable scenarios.
- Traces cross software and operating models.
- Findings name sensitivities and tradeoffs, separating facts, assumptions, and questions.
- High-consequence findings have evidence or mitigation owners.
- Accepted risk and revisit signals are recorded.

## Reject weak reviews

- Quality adjectives are not scenarios; diagrams need semantics.
- Reject universal rankings and heavyweight review for ordinary choices.
- Voting cannot hide missing participants or hard constraints.
- Qualitative review is not permanent proof; require later evidence.
