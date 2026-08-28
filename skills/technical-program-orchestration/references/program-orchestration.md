# Program orchestration records

Adapt these forms to the organization's existing tracker, roadmap, repositories, and decision surfaces. They are semantic contracts, not a requirement for one file per program or workstream.

## Artifact placement

- Keep one canonical program surface for the outcome, topology, integration state, limiting constraints, evidence trend, and closure.
- Keep a workstream inline in that surface when one driver, a compact frontier, and linked execution evidence are enough.
- Split or link a workstream artifact only when it has an independently maintained owner, repository, authorization boundary, audience, review or evidence lifecycle, or non-obvious re-entry need.
- When a workstream is a bounded software change, let `software-change-orchestration` choose its owning-repository, control-repository, hybrid, or inline persistence. Reference that canonical surface here.
- Never copy a local specification, design, plan, task list, or evidence table merely to make the program record look complete.

## Canonical program surface

### Outcome and authority

- Outcome and why now:
- Observable success and closure evidence:
- Program boundary and non-goals:
- Accountable outcome owner:
- Decision owners and risk acceptors:
- Authorized record or external-system writes:
- Deadline, constraint, and cost of delay or failure:

### Delivery topology

| Workstream key and label | Contribution | Driver | Canonical surface | Inputs and consumers | Current frontier | Evidence and limit | Completion or re-entry |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `WS-* — plain-language label` | | | inline or link | | | | |

### Integration contracts

| Integration key and label | Provider | Consumer | Usable behavior or artifact | Compatibility and timing | Evidence | Failure and escalation owner |
| --- | --- | --- | --- | --- | --- | --- |
| `INT-* — plain-language label` | | | | | | |

### Program control state

- Constraint model: dominant / coupled / not yet supported
- Dominant or coupled constraints and evidence:
- Program frontier and why it is limiting:
- Work that can proceed independently:
- Decisions due and latest useful decision time:
- Evidence trend and material contradiction:
- Forecast or commitment with assumptions:
- Next intervention and review point:

### Closure

- Integrated outcome evidence:
- Consumer adoption and operating ownership:
- Workstreams closed, handed off, deferred, or stopped:
- Temporary coordination and compatibility cleanup:
- Residual risk and owner:
- Accountable closure or program re-entry condition:

## Workstream contract

Use this as a linked artifact only when the placement rules justify it. Otherwise keep the same fields in the program surface or existing tracker item.

- Workstream key and label:
- Outcome contribution and explicit exclusions:
- Accountable driver and affected owners:
- Canonical local surface:
- Inputs, consumers, and integration contracts:
- Preserved decisions, invariants, and constraints:
- Current frontier and why it limits progress:
- Smallest next move and authorized owner or executor:
- Evidence, snapshot or date, and validity limit:
- Waiting, blocker, decision, or escalation condition:
- Completion evidence, handoff, cleanup, or re-entry condition:

The workstream driver owns local truth and advances its frontier. Program orchestration owns only the cross-workstream implication, integration state, and intervention needed for the shared outcome.

## Frontier checks

For each review, ask:

1. Does every active workstream have one current frontier rather than a backlog summary?
2. Which frontier is blocked by another workstream, shared environment, decision, reviewer, or integration contract?
3. Does evidence support one dominant constraint, a coupled constraint set, or no constraint conclusion yet?
4. What is the smallest intervention that changes the limiting gap or produces decisive constraint evidence?
5. Which work can continue without increasing unfinished integration risk?
6. What changed enough to revise a forecast, commitment, topology, or workstream boundary?
