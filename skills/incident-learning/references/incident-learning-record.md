# Incident Learning Record

## Review frame

- Incident or near miss:
- Customer/business impact:
- Detection, response, and recovery window:
- Review purpose and audience:
- Facilitator and note-taker:
- Evidence available and missing:
- Confidentiality or reporting constraints:

## Evidence timeline

| Time | Observable event | Representation/source | Participant interpretation | Action/result | Confidence |
| --- | --- | --- | --- | --- | --- |

Keep uncertain ordering visible. Link primary artifacts where policy permits.

## Perspective prompts

- What did you think was happening?
- What cues or representations supported that view?
- What were you trying to protect or accomplish?
- Which options appeared available, unsafe, or unauthorized?
- What did you do next, and what result did you expect?
- When did your model change?
- What made escalation or help-seeking easier or harder?

## Learning surfaces

### Surprise and model gaps

- Expected behavior:
- Observed behavior:
- Misleading or missing representation:
- Hidden dependency or assumption:

### Conditions and drift

- Normal adaptations or workarounds:
- Goal conflicts and delivery pressure:
- Latent conditions activated by this event:
- Protective control that amplified or obscured failure:
- Ownership, authority, or handoff gap:

### What prevented a worse outcome

- Expertise or local knowledge:
- Slack, redundancy, or isolation:
- Effective tool, procedure, or communication:
- Improvisation worth making repeatable:

## Improvement portfolio

| Finding | Intervention options | Selected change | Expected risk reduction | Verification signal | Owner/date |
| --- | --- | --- | --- | --- | --- |

Balance quick containment, deeper prevention, detection, recovery, and preservation of successful capacity. Record rejected interventions and their tradeoffs.

## Route by learned gap

| Learned gap | Smallest likely route |
| --- | --- |
| Detection, diagnosis, paging, or ownership routing | `operational-feedback-audit` |
| Missing or misleading signal contract | `observability-design` |
| Escaped invariant, behavior, or evidence layer | `verification-strategy-design`, followed by executed verification |
| Ambiguous business meaning or policy | `domain-modeling` |
| Local interface, state, seam, or change-locality problem | `deep-module-design` or `codebase-architecture-assessment` |
| Deployable, data, failure, or ownership boundary | `service-boundary-design` or `architecture-risk-evaluation` |
| Queueing, overload, retry, headroom, or recovery capacity | `service-capacity-engineering` |
| Exposure, rollout, rollback, coexistence, or migration | `controlled-release-design` or `high-risk-change-planning` |
| Responsibility, authority, access, escalation, or specialist support | `service-ownership-design` or `technical-decision-making` |
| Stale runbook or fragile manual procedure | Update and exercise the runbook or local automation directly |
| Repeated manual work that deserves shared capability | `platform-capability-design` |
| Accumulated learning invalidates the foundational design | `architecture-consolidation-review` at the appropriate module, service, system, or estate scale |

One incident can create several independent branches. Do not route every finding through architecture consolidation, create an approval gate, or convert a systemic condition into individual coaching by default.

## Follow-through

- Changes promoted into tests, platform defaults, or readiness checks:
- Runbook, telemetry, architecture, staffing, or training updates:
- Recurring pattern or related incidents to review:
- Review date and closure evidence:
