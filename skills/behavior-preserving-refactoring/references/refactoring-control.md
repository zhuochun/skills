# Refactoring control reference

Use these forms inside the active work item, plan, or review surface. They are thinking aids, not mandatory documents.

## Behavior commitment set

| Behavior or contract | Evidence source | Consumer or owner | Disposition | Consequence if wrong | Verification method |
| --- | --- | --- | --- | --- | --- |

Dispositions are **preserve**, **explicit retirement decision required**, and **unresolved**. Never let omission become a disposition.

## Structural target

- Pressure being relieved:
- Current knowledge/state/resource ownership:
- Target ownership and interface:
- Representation and lifecycle hidden:
- Semantics callers must still know:
- Compatibility boundary:
- Evidence seam before refactoring:
- Desired evidence seams after refactoring:
- Exit condition for old authority:

## Green-step plan

| Step | One structural move | Behavior signal | Reversal | Ownership transferred | Temporary state introduced or removed |
| --- | --- | --- | --- | --- | --- |

Each step should leave the repository understandable and runnable. If a step cannot be checked or reversed locally, split it. Use migration planning only when the structural target requires material technical movement, controlled transition states, authority transfer, cutover, retireability, and retirement.

## Evidence migration

| Broad characterization | Risk protected | New narrower seam | New evidence | Broad case retain/narrow/remove decision |
| --- | --- | --- | --- | --- |

Remove evidence tied only to retired structure rather than layering new interface checks on top. Do not mechanically remove all broad tests. Retain the few that protect integration disagreement or end-to-end behavior unavailable at narrower seams.

## Equivalence dimensions

- Returned values, state transitions, and emitted facts:
- Public API and consumer compatibility:
- Data shape, authority, and migration behavior:
- Ordering, concurrency, timing, and idempotency:
- Error, retry, cancellation, and partial-failure semantics:
- Performance and resource lifecycle:
- Observability and operator control:
- Unsupported or intentionally retired behavior:
- Evidence executed and regions not exercised:

For consequential refactoring, hand these dimensions and their fixed oracles to `software-verification`; the refactoring agent's green checks do not become independent certification merely because they are reported clearly.
