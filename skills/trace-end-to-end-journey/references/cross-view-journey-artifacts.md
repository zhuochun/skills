# Cross-View Journey Artifacts

Use the smallest artifact combination that makes the user's question
inspectable. Use numbered steps for a compact trace. Use stable `JNY-*` keys
across every selected form when comparison, reuse, durability, or consequence
requires a stable trace.

## Journey frame

- Outcome and primary actor:
- Starting trigger and starting state:
- Observable completion and ending state:
- Scope boundary and deliberate omissions:
- Audience and walkthrough question:
- Mode: supplied, recovered, expected, or comparison
- Trace form: compact or stable
- Evidence horizon and material missing perspectives:

## Cross-view step matrix

| Step | Actor, intent, and trigger | Touchpoint and visible result | Operational work or handoff | Domain transition and resulting state | System, interface, and interaction type | Data or effect authority | Evidence status, reference, and owner |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `1` or `JNY-01` |  |  |  |  |  |  |  |

Keep a cell empty or mark it not applicable when that view does not exist.
Do not repeat a transport payload as a domain fact unless the named owner makes
it authoritative. Use inline evidence labels for a compact trace and `EVD-*`
references for a stable trace. Label mixed-status content separately: a
declared action does not make an added state, handoff, result, or owner declared.

Use evidence labels consistently:

- **Observed:** current behavior, telemetry, traces, or direct walkthrough.
- **Executable:** code, configuration, schemas, tests, or interface
  definitions.
- **Declared:** current documentation, diagrams, procedures, or accepted
  design.
- **Reported:** an owner or participant account.
- **Inferred:** a visible conclusion from incomplete evidence.
- **Proposed:** intended future behavior that is not yet authoritative.
- **Unresolved:** a material gap or contradiction.

For a stable trace, keep a compact evidence index:

| Evidence | Type and locator | Supports | Observed-at or effective date | Owner | Limits or conflicts |
| --- | --- | --- | --- | --- | --- |
| `EVD-01` |  | `JNY-01` |  |  |  |

Use a path, URL, query, trace identifier, meeting record, or similarly
recheckable locator. Do not rely on a label such as `Observed` as a substitute
for provenance. Refresh volatile evidence before a consequential decision.

## Step story

For a reader-oriented walkthrough, describe each material step with:

1. **Before:** relevant journey state and what the actor knows.
2. **Action:** actor intent, trigger, or received fact.
3. **Visible result:** what changes for the actor or another participant.
4. **Behind the touchpoint:** operational work, system interaction, and data or
   effect authority.
5. **After:** resulting state, next owner, and possible wait.
6. **Uncertainty:** evidence limit, contradiction, or owner question.

Use neutral language when explaining alternatives. Do not narrate an inferred
step as if a participant confirmed it.

## Diagram selection

- Use a **flowchart** when actor sequence, decisions, and handoffs are the main
  question.
- Use a **sequence diagram** when requests, events, acknowledgements, timing,
  and interface ownership are the main question.
- Use a **state diagram** when lifecycle, legal transitions, waiting,
  cancellation, and recovery are the main question.
- Use a **storyboard or journey strip** when touchpoints and visible experience
  are the main question.
- Use several small linked diagrams instead of one unreadable all-purpose
  picture.

Label manual, synchronous, asynchronous, batch, and third-party crossings.
Keep the numbered step reference in a compact diagram or the stable key in each
stable-trace node or message. A diagram may omit detail only when the matrix
preserves it and the omission is stated.

## Branch trace

| Branch | Diverges at | Trigger or condition | Changed steps and states | Visible consequence | Recovery, compensation, or terminal result | Evidence status |
| --- | --- | --- | --- | --- | --- | --- |
| `B1` or `JNY-B01` |  |  |  |  |  |  |

Prefer branches that challenge authority, state, time, or ownership:

- rejection or authorization failure;
- cancellation before and after a committed effect;
- timeout or ambiguous acknowledgement;
- duplicate message or retry;
- partial fulfillment or unavailable dependency;
- manual escalation or repair; and
- compensation after an irreversible step.

Do not treat broad market, regulatory, competitive, or technological futures
as journey branches. Those belong to alternative-futures scenario planning.

## Expected-versus-observed overlay

For comparison mode, keep the expected step key as the anchor and classify:

- **matches:** evidence supports the expected behavior;
- **diverges:** current behavior or ownership differs;
- **missing in observation:** expected behavior was not observed;
- **extra observed step:** current work has no expected counterpart;
- **not comparable:** scope, population, environment, or evidence differs; or
- **unknown:** available evidence cannot classify the step.

Preserve both versions when they differ. Do not rewrite the expected journey to
make the current implementation appear aligned.

## Facilitated walkthrough

Start with the journey boundary and normal spine. Walk only enough steps for
the audience to maintain one mental picture. Pause when:

- a participant disputes a state, rule, owner, or visible outcome;
- an interface crossing lacks authority or acknowledgement semantics;
- a hidden manual action changes the apparent system behavior;
- expected and observed paths diverge materially; or
- the next segment depends on the unresolved answer.

Update the trace after each consequential correction. Finish with the smallest
set of unresolved owner questions and specialist routes, not a transcript of
the conversation.
