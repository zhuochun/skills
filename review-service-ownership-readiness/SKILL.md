---
name: review-service-ownership-readiness
description: Assess whether a team and its enabling environment can sustainably own a production service across design, delivery, deployment, operation, support, improvement, and retirement. Use before adopting or expanding full-cycle ownership, transferring a service, reducing Dev/Ops or specialist handoffs, changing on-call responsibility, reviewing unclear service ownership, or diagnosing ownership that exists only on an org chart. Do not use to justify headcount cuts, dump specialist work onto developers, or assume every regulated or high-risk responsibility should be combined.
---

# Review Service Ownership Readiness

Evaluate the whole operating system around ownership. “You build it, you run it” fails when authority, platform support, feedback, staffing, cognitive capacity, or specialist stewardship do not move with responsibility.

## Preserve organizational safety

- Assess and recommend by default; do not transfer ownership, paging, access, or approval authority without explicit authorization.
- Include current builders, operators, support, security, compliance, data, platform, product, and downstream owners in proportion to their real work and risk.
- Preserve independent review and separation of duties where safety, regulation, fraud risk, or conflicts of interest require them.
- Treat staffing health and interrupt load as system constraints, not individual commitment problems.

## Readiness workflow

1. **Define the service promise and lifecycle.** State customers, critical workflows, service boundary, authoritative data, dependencies, lifecycle stage, and what useful operation means.
2. **Trace current ownership.** Follow design, code, test, release, configuration, infrastructure, observability, paging, incident command, support, security, capacity, cost, dependency management, and retirement. Record waits and translations, not only named owners.
3. **Find responsibility-authority gaps.** Identify where a team is accountable without access, decision rights, budget, tooling, context, or control—and where authority exists without consequences or feedback.
4. **Assess cognitive and interrupt load.** Consider domain and system complexity, technologies, dependency count, operational novelty, pager demand, support volume, roadmap load, and simultaneous ownership. Do not infer readiness from team size alone.
5. **Assess enabling conditions.** Check deployment safety, test feedback, observability, service metadata, runbooks, incident support, production defaults, self-service infrastructure, specialist access, escalation, and learning loops.
6. **Design specialist interaction.** Choose where expertise should be embedded, offered as enabling help, provided as a platform capability, retained as an independent control, or shared during an explicit transition.
7. **Choose an ownership model.** Compare full-cycle, shared, platform-supported, specialist-operated, or transitional models against flow, risk, cognitive load, service maturity, and available capability. Avoid universal rankings.
8. **Plan the transition.** Transfer knowledge, access, authority, alerts, dashboards, runbooks, backlogs, capacity context, dependency relationships, and escalation. Use shadowing and graduated duty before removing the old path.
9. **Verify sustainability.** Define evidence for delivery flow, incident outcomes, handoffs, pager burden, service health, ownership routing, and improvement work. Add retreat or support triggers.

Use [references/service-ownership-readiness.md](references/service-ownership-readiness.md) for the assessment and transition record.

## Quality gates

- One service promise and lifecycle boundary anchor the review.
- Actual work and decisions are traced across build and operation.
- Responsibility, authority, capability, and feedback are evaluated separately.
- Cognitive load and interruption are measured with evidence rather than intuition.
- Platform and specialist prerequisites are explicit before ownership expands.
- The selected model explains retained handoffs and independent controls.
- Transition includes coexistence, support, verification, and retreat conditions.

## Reject weak ownership changes

- An org-chart owner with no production control or feedback.
- On-call transfer used as the first learning mechanism.
- Removing operations, QA, security, or support capacity while retaining all their work.
- Full-cycle ownership imposed on services that exceed one team's cognitive or staffing capacity.
- Shared ownership with no decision rights, escalation, or primary responder.
- Team-boundary change used to compensate for tightly coupled architecture without addressing the coupling.

## Completion

Return the service and lifecycle frame, current ownership trace, handoff and authority findings, cognitive-load and readiness assessment, compared ownership models, recommendation, prerequisites, transition stages, sustainability signals, retreat conditions, and accountable decision owners.
