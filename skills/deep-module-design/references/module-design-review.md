# Module design review

Use these prompts proportionately. They support a design decision; they are not required as a separate handoff artifact.

## Knowledge-derived reasoning model

| Mechanism | Consequence for module design |
| --- | --- |
| **Information Hiding Localizes Change** | Decompose around volatile knowledge and design decisions, not processing order or folders. |
| **Abstraction Partitions Bound Reasoning Cases** | Give state, resources, representations, and assumptions explicit ownership so internal cases do not multiply across the system. |
| **Near-Decomposable Boundaries Simplify System Behavior** | Seek strong internal interaction and weaker, reduced cross-boundary relationships; do not mistake hidden coupling for independence. |
| **Duplication Reveals Stable Abstraction Boundaries** | Preserve variation evidence until callers demonstrably share knowledge and change pressure; centralize invariants whose divergence is unsafe. |
| **Deep Interfaces Concentrate Complexity** | Make the caller's learning burden smaller than the useful behavior and complexity hidden. |
| **Composable Interfaces Externalize Feature Growth** | Let behavior grow through safe combinations when a shared exchange contract preserves the needed semantics. |
| **Code Should Minimize Meaning Search** | Judge names, modules, tests, and interfaces by total intent-recovery cost, not local tidiness. |
| **Explicit Dependencies Reduce Hidden Coupling** | Make required collaborators, configuration, context, and external structures visible where change decisions are made. |
| **Purity Boundaries Make Architecture Self-Reinforcing** | Use deterministic value transformations when they make the decision/effect boundary cheaper to preserve; do not treat purity as the goal. |
| **Vertical Slices Localize Business Change** | Group artifacts that change for one activity while keeping truly shared invariants authoritative. |
| **Synchronous Interfaces Preserve Concurrency Choice / Stream Lifecycles Must Own Producers** | Keep request-shaped work direct; when work is genuinely stream-shaped, expose activation, cancellation, teardown, and sharing honestly. |

## Evidence and intent

- Change or behavior motivating the design:
- Essential problem complexity and accidental friction:
- Desired locality: which future changes should touch only this boundary?
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
- Can the module be tested mostly through its interface and owned state?
- Do internal cases remain local when this module combines with another one?
- Are cross-boundary dependencies actually weak, or hidden through global state, shared storage, runtime lookup, approval chains, or synchronized releases?
- Would deleting the module spread real complexity across callers or merely remove a pass-through?

## Deep versus composable growth

Choose a deep capability when callers repeatedly coordinate steps or need one owner for invariants and lifecycle. Choose composition when bounded components can share an honest exchange contract and unknown future workflows should remain outside them.

For composition, specify schema, errors, ordering, timing, backpressure, security context, and observability. Repeated pairing-specific glue may indicate a higher-level deep capability has emerged.

## Decision and effect

For delete, send, charge, overwrite, migrate, revoke, or other risky effects:

- return an explicit plan from deterministic decision logic when this makes scope and consequences reviewable;
- recheck versions, authorization, and other safety-critical preconditions at apply time;
- keep idempotency, compensation, and failure handling visible in the effect runner.

## Lifecycle contract

- Request-shaped work: direct result, error, cancellation, and resource ownership.
- Stream-shaped work: activation, completion, consumer cancellation, teardown, sharing, buffering, and overload.
- Remote work: latency, timeout, retry, ordering, idempotency, partial failure, and observability.

## Design record

1. Pressure, desired locality, and evidence
2. Hidden knowledge, state, and resource ownership
3. Current baseline and alternatives
4. Selected deep or composable strategy
5. Contract, failures, lifecycle, and observability
6. Tests through the interface
7. Incremental adoption, retirement, risks, and revisit signals
