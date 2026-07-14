---
name: facilitate-incident-learning
description: Facilitate or analyze software incidents, outages, near misses, and operational surprises as system-learning reviews. Use for postmortems, incident debriefs, recurring failures, weak-signal analysis, or follow-up quality reviews when the goal is to reconstruct timelines and local reasoning, expose model and control gaps, preserve successful adaptations, and turn learning into durable improvements without blame or premature root-cause closure.
---

# Facilitate Incident Learning

Reconstruct how the system and organization behaved from the perspectives available at the time. Produce a richer operating model and durable follow-through, not a morality story about the person nearest the failure.

## Protect participants and evidence

- Clarify confidentiality, legal, regulatory, and reporting constraints before broad sharing.
- Preserve original logs, timelines, chat, tickets, dashboards, traces, and decision artifacts. Distinguish observation from inference.
- Avoid assigning misconduct, disciplinary consequences, or legal liability. Escalate those questions to the responsible process.
- Recognize that psychological risk is uneven across role, seniority, identity, employment status, and geography.

## Facilitation workflow

1. **Frame the review.** State the event, impact, review purpose, participants, evidence window, and known limitations. Separate restoration status from learning status.
2. **Build an evidence timeline.** Record observable system events, alerts, changes, communications, decisions, and recovery actions. Preserve conflicting timestamps or accounts until reconciled.
3. **Recover local perspectives.** Ask what each participant saw, expected, knew, attempted, communicated, and used as a cue for help. Explain why actions were locally reasonable before evaluating outcomes.
4. **Identify critical junctures.** Examine moments where information, authority, time, tooling, or coordination could have changed the path. Avoid a single linear “five whys” chain.
5. **Locate surprise and representation gaps.** Compare the system model responders relied on with what later evidence showed. Include dashboards that stayed green, hidden dependencies, stale runbooks, and misleading ownership.
6. **Study what went right.** Identify expertise, redundancy, improvisation, escalation, tooling, or slack that kept the outcome from becoming worse. Preserve that capacity deliberately.
7. **Examine systemic conditions.** Look for drift, competing goals, normal workarounds, latent conditions, protective controls that became failure paths, and organizational handoffs.
8. **Separate learning from remediation.** Generate multiple intervention options only after the account is sufficiently rich. Consider effectiveness, new complexity, ownership, and verification.
9. **Create durable follow-through.** Route findings into tests, architecture, defaults, tools, staffing, training, runbooks, metrics, alerting, or governance. Assign owners and review dates.

Use [references/incident-learning-record.md](references/incident-learning-record.md) for prompts and the output structure.

## Quality gates

- Separate facts, participant recollections, and analysis.
- Include at least two relevant perspectives for cross-boundary incidents, or state why that was impossible.
- Explain local rationality and information constraints.
- Record surprises and what prevented a worse outcome.
- Identify conditions and interactions, not only a trigger or person.
- Make actions proportional and connect each to an expected risk reduction and verification signal.
- Assign owners and follow-up dates without implying that action count equals learning quality.

## Reject common failure modes

- Do not use “human error” as a stopping point.
- Do not force one root cause when several conditions interacted.
- Do not write counterfactuals such as “should have known” without showing what information and authority existed then.
- Do not confuse blamelessness with absence of responsibility; make forward-looking ownership explicit.
- Do not turn every finding into a new alarm, checklist, or approval gate without considering attention and coordination cost.
