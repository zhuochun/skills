# Software failure diagnosis reference

Use the smallest subset that keeps the active investigation inspectable. Prefer the repository's incident, issue, or debugging artifact over a new handoff file.

## Knowledge-derived reasoning model

| Mechanism | Diagnostic consequence |
| --- | --- |
| **Executable Reproductions Localize Bug Ownership** | Turn the symptom into a runnable disagreement at a supported boundary and remove only variables that do not carry the mechanism. |
| **Written Hypotheses Direct Inquiry** | Make provisional causes inspectable and choose the next observation by what could change their rank. |
| **Observable Execution Preserves Debugging Context** | Retain transitions, intermediate state, and causal links so temporal failures can be investigated after the symptom appears. |
| **Bidirectional Checks Bound Model Repair** | When trace inclusion and invariant exclusion disagree, keep inaccurate model, implementation defect, faulty invariant, and faulty instrumentation or harness as competing hypotheses; do not repair by automatically weakening either check. |
| **Request Context Makes Distributed Behavior Reconstructable** | Follow causal identity across services, queues, retries, and asynchronous work instead of joining unrelated timestamps. |
| **Measurement Views Must Match Bottleneck Questions** | Select logs, traces, profiles, distributions, timelines, or outside-in probes for the mechanism each can discriminate. |
| **Dynamic Tools Need Exercised Behavior** | Record the workload, schedule, input, and runtime mode observed; a clean run does not cover unexercised behavior. |
| **Blameless Incident Learning** | Explain local actions and adaptations in their context; diagnosis improves systems rather than assigning hindsight blame. |

## Symptom contract

- Expected behavior and source of expectation:
- Observed behavior and raw evidence:
- User or system impact:
- Population, frequency, and distribution:
- First/last known time and version:
- Environment, configuration, data, and dependencies:
- Trigger or preceding conditions:
- Known-good comparison:
- Reproduction or resolution criterion:

## Evidence loop options

Choose the lightest faithful loop:

1. focused existing test or command;
2. minimal script, fixture, or public-interface test;
3. differential old/new or good/bad execution;
4. captured request, event, trace, or state replay;
5. repeated or stress-amplified intermittent run;
6. controlled environment or deterministic simulation;
7. bounded production observation with request context;
8. durable manual recipe when automation cannot preserve the mechanism.

Record why a simpler loop would remove the failure mechanism.

## Hypothesis table

| Rank | Hypothesis | Discriminating prediction | Evidence for | Evidence against | Next safe observation | Result and rank update |
| --- | --- | --- | --- | --- | --- | --- |

Nearby hypotheses should make different predictions. Rewording the same cause five ways does not reduce uncertainty.

## Causal account

- Initiating condition:
- Faulty decision, state transition, interaction, or resource mechanism:
- Enabling conditions that allowed it to matter:
- Propagation path:
- Observable impact:
- Evidence joining each link:
- Counterevidence rejecting alternatives:
- Scope of affected versions, populations, and paths:
- Confidence and decisive uncertainty:

Avoid “five whys” as a substitute for evidence. Several enabling conditions can combine without one linear root.

## Diagnosis outcome

- Supported cause or best current explanation:
- Reproduction or observation artifact:
- Contract violated:
- Fix authorization status:
- Smallest repair boundary:
- Regression seam and expected red/green signal:
- Missing design, observability, verification, operational, or process capability:
- Temporary diagnostic artifacts removed or retained with owner and expiry:
