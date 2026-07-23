---
name: service-ownership-design
description: Design or assess whether a team and its enabling environment can sustainably own a production service across delivery, operation, support, improvement, and retirement. Use before ownership transfer, expanded full-cycle responsibility, reduced handoffs, on-call change, or review of nominal ownership. Exclude headcount justification, work dumping, and unsafe consolidation of regulated or high-risk duties.
---

# Service Ownership Design

Evaluate the whole operating system around ownership. “You build it, you run it” fails when authority, platform support, feedback, staffing, cognitive capacity, or specialist stewardship do not move with responsibility.

## Preserve organizational safety

- Assess and recommend by default; do not transfer ownership, paging, access, or approval authority without explicit authorization.
- Include builders, operators, support, security, compliance, data, platform, product, and downstream owners proportionately.
- Preserve independent review and separation of duties where safety, regulation, fraud risk, or conflicts of interest require them.
- Treat staffing health and interrupt load as system constraints, not individual commitment problems.

## Readiness workflow

1. **Define the service promise and lifecycle.** State customers, critical workflows, service boundary, authoritative data, dependencies, lifecycle stage, and what useful operation means.
2. **Trace ownership.** Follow design, code, test, release, configuration, infrastructure, observability, paging, command, support, security, capacity, cost, dependencies, and retirement. Record waits and translations.
3. **Find responsibility-authority gaps.** Identify where a team is accountable without access, decision rights, budget, tooling, context, or control—and where authority exists without consequences or feedback.
4. **Assess cognitive and interrupt load.** Consider complexity, technologies, dependencies, novelty, pager and support demand, roadmap load, and simultaneous ownership. Team size alone proves nothing.
5. **Assess enabling conditions.** Check deployment safety, test feedback, observability, service metadata, runbooks, incident support, production defaults, self-service infrastructure, specialist access, escalation, and learning loops.
6. **Design specialist interaction.** Choose where expertise should be embedded, offered as enabling help, provided as a platform capability, retained as an independent control, or shared during an explicit transition.
7. **Choose an ownership model.** Compare full-cycle, shared, platform-supported, specialist-operated, or transitional models against flow, risk, cognitive load, service maturity, and available capability. Avoid universal rankings.
8. **Plan transition.** Transfer knowledge, access, authority, alerts, dashboards, runbooks, backlogs, capacity, dependencies, and escalation. Shadow and graduate duty before removing old paths.
9. **Verify sustainability.** Define evidence for delivery flow, incident outcomes, handoffs, pager burden, service health, ownership routing, and improvement work. Add retreat or support triggers.

Read [references/service-ownership-readiness.md](references/service-ownership-readiness.md) only when a durable readiness assessment or transition record is needed.

## Quality gates

- One service promise and lifecycle anchors traced build and operation work.
- Responsibility, authority, capability, and feedback remain distinct.
- Cognitive and interrupt load use evidence.
- Platform and specialist prerequisites precede expanded ownership.
- The model explains retained handoffs and controls.
- Transition includes coexistence, support, verification, and retreat.

## Reject weak ownership changes

- Reject org-chart ownership without control, on-call as first learning, or removal of specialist capacity while retaining its work.
- Do not impose full-cycle responsibility beyond capacity.
- Shared ownership needs decision rights, escalation, and a primary responder.
- Team-boundary changes do not repair architectural coupling.

## Completion

Return the service and lifecycle frame, current ownership trace, handoff and authority findings, cognitive-load and readiness assessment, compared ownership models, recommendation, prerequisites, transition stages, sustainability signals, retreat conditions, and accountable decision owners.
