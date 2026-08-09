# Module design review

Use these prompts proportionately. They support a design decision; they are not required as a separate handoff artifact.

## Knowledge-derived reasoning model

| Mechanism | Consequence for module design |
| --- | --- |
| **Software Engineering Is Programming Over Time** | Calibrate interface stability, compatibility, migration support, and design investment to expected lifetime, contributors, consumers, and reversal cost. |
| **Information Hiding Localizes Change** | Decompose around volatile knowledge and design decisions, not processing order or folders. |
| **Abstraction Partitions Bound Reasoning Cases** | Give state, resources, representations, and assumptions explicit ownership so internal cases do not multiply across the system. |
| **Near-Decomposable Boundaries Simplify System Behavior** | Seek strong internal interaction and weaker, reduced cross-boundary relationships; do not mistake hidden coupling for independence. |
| **Duplication Reveals Stable Abstraction Boundaries** | Preserve variation evidence until callers demonstrably share knowledge and change pressure; centralize invariants whose divergence is unsafe. |
| **Deep Interfaces Concentrate Complexity** | Make the caller's learning burden smaller than the useful behavior and complexity hidden. |
| **Composable Interfaces Externalize Feature Growth** | Let behavior grow through safe combinations when a shared exchange contract preserves the needed semantics. |
| **Code Should Minimize Meaning Search** | Judge names, modules, tests, and interfaces by total intent-recovery cost, not local tidiness. |
| **Explicit Dependencies Reduce Hidden Coupling** | Make required collaborators, configuration, context, and external structures visible where change decisions are made. |
| **Correctness Should Come From Structure, Not Vigilance** | Put repeated consequential obligations into types, contracts, defaults, tests, or owned state rather than caller memory. |
| **Purity Boundaries Make Architecture Self-Reinforcing** | Use deterministic value transformations when they make the decision/effect boundary cheaper to preserve; do not treat purity as the goal. |
| **Vertical Slices Localize Business Change** | Group artifacts that change for one activity while keeping truly shared invariants authoritative. |
| **Synchronous Interfaces Preserve Concurrency Choice / Stream Lifecycles Must Own Producers** | Keep request-shaped work direct; when work is genuinely stream-shaped, expose activation, cancellation, teardown, and sharing honestly. |
| **Process Models Preserve Intermediate State** | When work can pause, resume, retry, wait, compensate, or change hands, give durable status, accumulated facts, transitions, and next-step authority one owner. |
| **Adoption Friction Shapes Reuse** | Judge shared interfaces by the cost to try, understand, trust, adapt, and carry them forward—not technical merit alone. |
| **Transparent Abstractions Expose Replaceable Policies** | Keep safe defaults for ordinary callers and expose only recurring orthogonal choices through a contract-bearing advanced layer. |

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
