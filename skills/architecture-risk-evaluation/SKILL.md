---
name: architecture-risk-evaluation
description: Evaluate software architecture by translating business drivers and quality goals into prioritized, falsifiable scenarios and tracing them through components, data, deployment, dependencies, and operating procedures. Use for architecture proposals, design reviews, modernization programs, major technology choices, vague scalability or availability claims, cross-team tradeoffs, or ADR preparation before consequential decisions harden.
---

# Architecture Risk Evaluation

Expose the decisions and assumptions controlling important outcomes. Produce risks, sensitivities, tradeoffs, and an evidence plan—not a score or approval ceremony.

## Preserve decision ownership

- Analyze by default; claim approval only when governance grants it.
- Include affected product, engineering, operations, security, data, compliance, support, and platform perspectives proportionately. Record absences and contested priorities.

## Clarify and challenge with scenarios

- Inspect architecture, decisions, operating evidence, and constraints first. Expose material ambiguity, assumptions, failure paths, sensitivities, and evidence gaps even without stakeholder access.
- Clarify interactively when requested or when owner-controlled drivers or risk tolerance block evaluation. Ask only decision-changing questions; batch independent ones and serialize dependent, sensitive, or gated ones.
- Establish drivers and constraints before testing consequential scenarios, counter-assumptions, failure and recovery, and credible alternatives. Route accountable closure to `decision-facilitation`.

## Evaluation workflow

1. **Frame the decision.** State the system boundary, lifecycle stage, decision owner, business drivers, constraints, alternatives, and reversibility.
2. **Connect stakeholders and qualities.** Tie availability, modifiability, performance, security, interoperability, cost, and operability to stakeholder outcomes.
3. **Write scenarios.** Specify source, stimulus, environment, affected artifact, expected response, and measure. Include use, growth, change, failure, recovery, and exploration.
4. **Prioritize.** Rank business importance and architectural risk; do not let numeric scoring hide missing evidence.
5. **Describe the architecture.** Make elements, relationships, scope, data ownership, and deployment meaning traceable.
6. **Trace scenarios.** Follow each high-priority scenario through modules, services, connectors, processes, data, infrastructure, controls, teams, and operational procedures.
7. **Identify findings.** Record risks, non-risks, sensitivity points, tradeoff points, assumptions, and unknowns. Explain which architectural parameter controls the response.
8. **Compare options.** Weight consequences by current drivers; use rough models or prototypes to eliminate implausible options cheaply.
9. **Plan evidence and decisions.** Define needed tests, experiments, measurements, rollout evidence, and operational signals. Record consequential decisions and accepted consequences.

## Classify findings

- **Risk:** A decision or assumption may prevent the required response.
- **Non-risk:** Evidence supports the response under named assumptions.
- **Sensitivity:** A small parameter change strongly alters the response.
- **Tradeoff:** A parameter improves one quality while worsening another.
- **Unknown:** Evidence cannot yet classify the response.

## Quality gates

- Prioritized qualities tie to stakeholder drivers and refutable observable scenarios.
- Traces cross software and operating models.
- Structural claims include the smallest self-contained text view needed: scope, elements, relationships, data or ownership meaning, and evidence status. Do not require a renderer.
- Findings name sensitivities and tradeoffs, separating facts, assumptions, and questions.
- High-consequence findings have evidence or mitigation owners.
- Accepted risk and revisit signals are recorded.

## Reject weak reviews

- Quality adjectives are not scenarios; diagrams need semantics.
- Reject universal rankings, heavyweight review for ordinary choices, and voting that hides missing participants or constraints.
- Qualitative review is not permanent proof; require later evidence.
