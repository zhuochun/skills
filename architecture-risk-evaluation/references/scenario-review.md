# Scenario-Driven Architecture Review

## Scenario form

- **Driver and stakeholder:** Why does this outcome matter, and to whom?
- **Source:** Who or what produces the stimulus?
- **Stimulus:** What change, load, failure, attack, request, or event occurs?
- **Environment:** Normal operation, peak, degraded dependency, migration, recovery, or another condition?
- **Artifact:** Which software, data, infrastructure, team, or control is affected?
- **Response:** What must the system and organization do?
- **Response measure:** What observable threshold, time, correctness property, cost, or containment proves an acceptable response?

## Scenario set

Include only relevant categories:

- ordinary business use and critical value stream;
- demand growth, skew, or traffic-shape change;
- domain rule or product-policy change;
- dependency, zone, region, identity, or control-plane failure;
- data correction, replay, restore, or migration;
- security abuse, privilege change, or data exposure;
- team ownership, platform, vendor, or regulatory change;
- deployment, rollback, incident diagnosis, and recovery.

## Priority table

| Scenario | Business importance | Architectural risk/uncertainty | Consequence | Reversibility | Priority rationale |
| --- | --- | --- | --- | --- | --- |

## Trace worksheet

For each high-priority scenario, record:

- entry point and affected population;
- modules, services, interfaces, and processes traversed;
- authoritative data and consistency boundaries;
- deployment and infrastructure path;
- ownership, escalation, and operational controls;
- parameter controlling the response;
- assumptions and available evidence.

## Finding types

- **Risk:** An architectural decision or assumption may prevent the response.
- **Non-risk:** Current evidence supports the response under named assumptions.
- **Sensitivity point:** A small parameter change strongly alters the response.
- **Tradeoff point:** One parameter improves one quality while worsening another.
- **Unknown:** Evidence is insufficient to classify the finding.

## Review output

1. Decision frame and participants
2. Architecture views and semantic definitions
3. Prioritized scenarios
4. Scenario traces
5. Risks, non-risks, sensitivities, tradeoffs, and unknowns
6. Options and contextual weighting
7. Prototypes, models, tests, or production evidence required
8. Decisions, accepted risk owners, and revisit signals
