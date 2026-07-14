# Module Design Review

## Evidence and intent

- Change or behavior motivating the design:
- Domain activity and invariants:
- Current callers and future consumers with evidence:
- Knowledge duplicated across callers:
- Defects, incidents, or test pain:
- Compatibility and lifecycle constraints:

## Design alternatives

Create at least two alternatives that move the seam or change the interface shape—not only different names.

| Dimension | Alternative A | Alternative B | Current shape |
| --- | --- | --- | --- |
| Caller interface burden | | | |
| Behavior hidden | | | |
| Change locality | | | |
| Domain intent visibility | | | |
| Failure and lifecycle semantics | | | |
| Test surface | | | |
| Migration/compatibility | | | |

## Deepening questions

- Which decisions can move behind the interface?
- Which ordering, representation, or format facts can callers stop knowing?
- Can the module own a complete lifecycle rather than exposing setup/step/finish phases?
- Would deleting the module make complexity reappear across callers, or simply remove a pass-through?
- Are defaults carrying learned safe behavior while escape hatches remain explicit?
- Does the design minimize search for the meaning of one business action?

## Decision/effect split

For delete, send, charge, overwrite, migrate, revoke, or other risky effects:

- Return an explicit, serializable plan from deterministic decision logic.
- Make scope, rationale, and consequences reviewable.
- Recheck state versions or preconditions at apply time.
- Keep authorization, idempotency, and error handling visible in the effect runner.

## Vertical-slice check

Group request, validation, orchestration, response/projection, and local data access when they change for one business reason. Keep security, financial, legal, and domain invariants shared when duplication would create inconsistency.

## Design record

1. Problem and evidence
2. Chosen seam and interface
3. Alternatives and tradeoffs
4. Contract, failures, lifecycle, and observability
5. Tests through the interface
6. Incremental migration and removal plan
7. Risks and revisit signals
