---
name: architecture-risk-evaluation
description: Evaluate software architecture by translating business drivers and quality goals into prioritized, falsifiable scenarios and tracing them through components, data, deployment, dependencies, and operating procedures. Use for architecture proposals, design reviews, modernization programs, major technology choices, vague scalability or availability claims, cross-team tradeoffs, or ADR preparation before consequential decisions harden.
---

# Architecture Risk Evaluation

Expose which architectural decisions and assumptions control outcomes that matter. Produce risks, sensitivities, tradeoffs, and an evidence plan—not a generic architecture score or approval ceremony.

## Preserve decision ownership

- Facilitate and analyze by default. Do not present the review as formal approval unless the organization's governance process grants that authority.
- Include affected product, engineering, operations, security, data, compliance, support, and platform perspectives in proportion to the decision.
- Record absent stakeholders and contested priorities rather than manufacturing consensus.

## Evaluation workflow

1. **Frame the decision.** State the system boundary, lifecycle stage, decision owner, business drivers, constraints, alternatives, and reversibility.
2. **Identify stakeholders and qualities.** Connect qualities such as availability, modifiability, performance, security, interoperability, cost, and operability to stakeholder outcomes.
3. **Write concrete scenarios.** Specify source, stimulus, environment, affected artifact, expected response, and measurable or observable response. Include ordinary use, growth, change, failure, recovery, and exploratory cases.
4. **Prioritize.** Rank scenarios by business importance and architectural risk. Resolve missing evidence before allowing numeric scoring to create false precision.
5. **Describe the architecture.** Use views whose elements, relationships, scope, data ownership, and deployment meaning are explicit enough to trace scenarios.
6. **Trace scenarios.** Follow each high-priority scenario through modules, services, connectors, processes, data, infrastructure, controls, teams, and operational procedures.
7. **Identify findings.** Record risks, non-risks, sensitivity points, tradeoff points, assumptions, and unknowns. Explain which architectural parameter controls the response.
8. **Compare options contextually.** Weight consequences using current drivers and constraints. Use rough quantitative models or prototypes where they can eliminate implausible options cheaply.
9. **Plan evidence and decisions.** Define tests, experiments, measurements, rollout evidence, or operational signals needed. Preserve consequential decisions and accepted consequences in an ADR or equivalent record.

Use [references/scenario-review.md](references/scenario-review.md) for scenario forms and the findings template.

## Quality gates

- Tie each prioritized quality to a business or stakeholder driver.
- Make scenarios refutable through observable responses.
- Trace scenarios through both software structure and operating model.
- Name sensitivity and tradeoff parameters rather than listing generic pros and cons.
- Separate observed facts, assumptions, and open questions.
- Give high-consequence findings an evidence or mitigation plan and owner.
- Record accepted risk and revisit signals.

## Reject weak reviews

- Do not treat “scalable,” “secure,” “resilient,” or “maintainable” as scenarios.
- Do not review diagrams without semantic definitions.
- Do not apply universal architecture rankings detached from business context.
- Do not force ordinary implementation choices through a heavyweight workshop.
- Do not let stakeholder voting hide missing participants or hard constraints.
- Do not treat a qualitative review as permanent proof; require later evidence.
