---
name: incident-learning
description: Facilitate or analyze incidents, outages, near misses, and operational surprises as system-learning reviews. Use for postmortems, debriefs, recurring failures, weak-signal analysis, or follow-up quality reviews. Reconstruct timelines and local reasoning, expose model and control gaps, preserve successful adaptations, and create durable improvements without blame or premature root-cause closure.
---

# Incident Learning

Reconstruct how the system and organization behaved from the perspectives available at the time. Produce a richer operating model and durable follow-through, not a morality story about the person nearest the failure.

## Protect participants and evidence

- Clarify confidentiality, legal, regulatory, and reporting constraints before broad sharing.
- Preserve original logs, timelines, chat, tickets, dashboards, traces, and decisions; separate observation from inference.
- Avoid assigning misconduct, disciplinary consequences, or legal liability. Escalate those questions to the responsible process.
- Recognize that psychological risk is uneven across role, seniority, identity, employment status, and geography.

## Facilitation workflow

1. **Frame the review.** State the event, impact, review purpose, participants, evidence window, and known limitations. Separate restoration status from learning status.
2. **Build an evidence timeline.** Record observable system events, alerts, changes, communications, decisions, and recovery actions. Preserve conflicting timestamps or accounts until reconciled.
3. **Recover perspectives.** Ask what participants saw, expected, knew, attempted, communicated, and used as cues. Explain local rationality before judging outcomes.
4. **Identify critical junctures.** Examine moments where information, authority, time, tooling, or coordination could have changed the path. Avoid a single linear “five whys” chain.
5. **Locate surprise and representation gaps.** Compare the system model responders relied on with what later evidence showed. Include dashboards that stayed green, hidden dependencies, stale runbooks, and misleading ownership.
6. **Study what went right.** Identify expertise, redundancy, improvisation, escalation, tooling, or slack that kept the outcome from becoming worse. Preserve that capacity deliberately.
7. **Examine systemic conditions.** Look for drift, competing goals, normal workarounds, latent conditions, protective controls that became failure paths, and organizational handoffs.
8. **Separate learning from remediation.** Generate multiple intervention options only after the account is sufficiently rich. Consider effectiveness, new complexity, ownership, and verification.
9. **Create branching follow-through.** Classify gaps before intervention. Route feedback, signal, verification, design, capacity, release, ownership, and decision gaps to their owners; route accumulated foundational mismatch to `retrospective-architecture-review`. Parallelize independent branches; update a runbook or local process when sufficient. Assign owners and review dates.

Read [references/incident-learning-record.md](references/incident-learning-record.md) only when facilitating a multi-participant review, reconstructing a detailed timeline, selecting follow-up by learned gap, or recording durable follow-through.

## Quality gates

- Separate facts, recollections, and analysis; include relevant cross-boundary perspectives or explain their absence.
- Explain local rationality, constraints, surprises, and successful adaptations.
- When the responder model and later evidence diverge across several components or owners, include the smallest self-contained text comparison of expected and observed paths, controls, and ownership. Preserve evidence status and successful adaptations; richer rendering is optional.
- Identify interacting conditions, not one trigger or person.
- Actions are proportional, routed by gap, tied to risk reduction and verification, and explain why narrower work is insufficient.
- Owners and dates do not make action count a quality measure.

## Reject common failure modes

- Human error is not a stopping point; interacting conditions need not collapse to one cause.
- Counterfactuals must reflect available information and authority.
- Blamelessness retains forward ownership.
- New alarms, checklists, and gates must justify attention and coordination cost.
