# Software change review reference

Apply these lenses selectively. A good review is a prioritized disagreement surface, not a completed checklist.

## Knowledge-derived reasoning model

| Mechanism | Review consequence |
| --- | --- |
| **Agentic Throughput Shifts Work Toward Verification** | Review generated changes for ownership, comprehension, and future change cost, not only immediate green checks. |
| **Adversarial Evaluators Separate Generation From Judgment** | Judge observable artifacts against fixed criteria from a context able to reject the builder's assumptions. |
| **Automation Makes Human Judgment the Bottleneck** | Spend scarce review attention on ambiguity, consequence, architecture, and exceptions; automate stable repeated comments. |
| **Context Enables Autonomous Judgment** | Recover goals, constraints, rationale, standards, and nearby behavior so local review decisions are grounded rather than centrally prescribed. |
| **Correctness Should Come From Structure, Not Vigilance** | Route repeated important findings toward tests, types, schemas, boundaries, defaults, or guardrails instead of permanent reviewer memory. |
| **Code Should Minimize Meaning Search** | Evaluate whether the next maintainer can recover intent, ownership, behavior, and constraints without unnecessary archaeology. |
| **Blast Radius Sets Guardrail Cost** | Increase review depth with consequence, reach, irreversibility, and recovery difficulty rather than applying one ceremony to every diff. |

## Review frame

- Base/head or worktree scope:
- Change intent and source:
- Non-goals:
- Supported behavior and compatibility:
- Affected users, consumers, data, dependencies, and operators:
- Claimed tests or evidence:
- Consequence, reach, reversibility, and uncertainty:
- Repository rules and decisions consulted:
- Important missing context:

## Risk lenses

- **Behavior:** requested outcomes, edge conditions, authorization, validation, and truthful failure.
- **Contracts:** API, schema, event, ordering, versioning, consumer, and support-policy compatibility.
- **State and effects:** authority, transaction boundaries, idempotency, replay, cleanup, irreversible side effects, and migration states.
- **Runtime:** latency, capacity, dependency failure, cancellation, resources, observability, control paths, and recovery.
- **Structure:** knowledge ownership, interface honesty, change locality, duplication, hidden coupling, dual authority, and obsolete paths.
- **Evidence:** oracle independence, seam validity, failure-path exercise, environmental fidelity, and unexecuted claims.
- **Human maintenance:** naming, rationale, meaning-search, review burden, and whether future changes remain local.

Select lenses from the actual change. Do not mention an untouched dimension merely to show completeness.

## Severity calibration

- **Critical:** Credible path to severe user, data, money, security, compliance, or availability harm; merge or release should stop pending accountable resolution.
- **High:** Material incorrect behavior, contract break, data risk, unsafe failure path, or broad regression likely under realistic conditions.
- **Medium:** Bounded defect or structural decision likely to create meaningful maintenance, reliability, or compatibility cost.
- **Low:** Local issue worth correcting but unlikely to alter important behavior or near-term change economics.

Lower confidence rather than inflating severity when evidence is incomplete. A high-consequence question with no demonstrated path is a residual risk or evidence gap, not automatically a critical finding.

## Finding format

### Short imperative or behavioral title

- Severity and confidence:
- Location:
- Changed behavior or assumption:
- Evidence and counterexample:
- User, consumer, data, operational, or maintenance impact:
- Why existing evidence does not catch or justify it:
- Smallest credible repair direction:

Keep the location tight. Use a broader range only when the defect is the relationship among several lines.

## Review outcome

- Actionable findings by severity:
- Questions requiring owner interpretation:
- Evidence executed by the reviewer:
- Claimed evidence not independently executed:
- Important scope limitations:
- Residual risks and recommended next skill:
- No-findings statement when applicable:

“No actionable findings” means none were supported within the reviewed change, intent, and evidence. It does not mean the implementation or surrounding system is proven correct.
