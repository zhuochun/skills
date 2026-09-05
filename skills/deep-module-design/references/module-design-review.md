# Module design review

Use these prompts proportionately. They support a design decision; they are not required as a separate handoff artifact.

## Evidence and intent

- Change or behavior motivating the design:
- Evidence status for consequential claims: confirmed, inferred, assumed, proposed, or unresolved:
- Essential problem complexity and accidental friction:
- Desired locality: which future changes should touch only this boundary?
- Design horizon: expected lifetime, contributors, consumers, compatibility exposure, misunderstanding cost, and reversal cost:
- Domain activity, behavior, and invariants:
- Current callers, consumers, and compatibility:
- Knowledge duplicated or leaked across callers:
- State, resources, dependencies, and lifecycles lacking one owner:
- Strong internal interactions and remaining cross-boundary coupling:
- Defects, incidents, performance, or test evidence:

## Design alternatives

Create alternatives that move the knowledge boundary or change the interface strategy—not only names. Include the current shape.

| Dimension | Current shape | Deep capability interface | Composable exchange interface | Other candidate |
| --- | --- | --- | --- | --- |
| Hidden decision and owner | | | | |
| Caller knowledge burden | | | | |
| Internal versus external interaction | | | | |
| Change locality and meaning search | | | | |
| Feature-growth path | | | | |
| Failure, lifecycle, and performance semantics | | | | |
| Test and reasoning boundary | | | | |
| Compatibility, adoption, and retirement | | | | |

Delete inapplicable columns; do not force composability when the domain requires coordinated state or a deep owner.

## Boundary checks

- Which representation, resource, policy, algorithm, ordering, or lifecycle fact becomes exclusively owned?
- Which assumptions must remain visible for callers to be correct?
- Does the current owner and interface already localize the demonstrated pressure?
- Can the module be tested mostly through its interface and owned state?
- Do internal cases remain local when this module combines with another one?
- Are cross-boundary dependencies actually weak, or hidden through global state, shared storage, runtime lookup, approval chains, or synchronized releases?
- Which repeated consequential obligation becomes structural rather than something every caller must remember?
- Is each proposed policy or escape path justified by recurring variation, with invalid combinations rejectable?
- Would deleting the module spread real complexity across callers or merely remove a pass-through?

## Dependency and test-surface probes

For each dependency that could shape the seam, inspect:

- who owns it and whether it changes independently;
- which failure, timing, and lifecycle semantics cross it;
- whether a faithful local substitute or deterministic setup can exercise the module; and
- whether alternate implementations exist in production or only for testing.

Keep locally owned or faithfully substitutable mechanics behind the module when callers do not need their contract. Expose the smallest honest seam for an independently controlled collaborator or external contract. A mock alone is not evidence of production variation. Treat deletion as a probe rather than a score: adaptation or orchestration may still localize real change even when little algorithmic complexity reappears in callers. Keep the public interface as the primary durable behavior surface; use internal tests for faster diagnosis without freezing private structure.

## Deep versus composable growth

Choose a deep capability when callers repeatedly coordinate steps or need one owner for invariants and lifecycle. Choose composition when bounded components can share an honest exchange contract and unknown future workflows should remain outside them.

For composition, specify schema, errors, ordering, timing, backpressure, security context, and observability. Repeated pairing-specific glue may indicate a higher-level deep capability has emerged.

For a shared abstraction, preserve a working default path. Add an advanced policy surface only when a recurring specialized constraint can vary without redefining the abstraction's purpose. State its invariant, compatibility, performance, representation, and lifecycle consequences; a lower-level escape path is often clearer than universal configurability.

## Decision and effect

For delete, send, charge, overwrite, migrate, revoke, or other risky effects:

- return an explicit plan from deterministic decision logic when this makes scope and consequences reviewable;
- recheck versions, authorization, and other safety-critical preconditions at apply time;
- keep idempotency, compensation, and failure handling visible in the effect runner.

## Lifecycle contract

- Request-shaped work: direct result, error, cancellation, and resource ownership.
- Stream-shaped work: activation, completion, consumer cancellation, teardown, sharing, buffering, and overload.
- Process-shaped work: durable status, accumulated facts, allowed transitions, next-transition authority, pause/resume, retry, timeout, hold, cancellation, compensation, expiration, reconciliation, and inspection.
- Remote modifier: latency, timeout, ambiguous completion, retry, ordering, idempotency, partial failure, and observability.

## Design record

1. Retain-or-redesign decision, pressure, design horizon, desired locality, and evidence status
2. Hidden knowledge, state, and resource ownership
3. Current baseline and alternatives
4. Selected deep or composable strategy
5. Contract, failures, lifecycle, and observability
6. Tests through the interface
7. Default and advanced adoption paths, incremental migration, retirement, risks, and revisit signals
