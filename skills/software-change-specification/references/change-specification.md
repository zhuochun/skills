# Change specification reference

Adapt these forms inside the user's existing work surface. Do not create a separate document merely to use the skill.

## Knowledge-derived reasoning model

| Mechanism | Specification consequence |
| --- | --- |
| **Solution-Shaped Requirements Hide Business Intent** | Recover outcome, constraints, examples, and success before treating a requested implementation as mandatory. |
| **Concrete Examples Expose Requirement Ambiguity** | Use ordinary and boundary cases to provoke disagreement; promote the resolved rule rather than mistaking the initial scenario for the requirement. |
| **Task Expertise Amplifies Agent Leverage** | Externalize intent, constraints, edge cases, acceptance claims, and recovery expectations so delegated execution does not invent them. |
| **Vertical Slices Localize Business Change** | Bound the specification around one coherent user or caller outcome instead of technical-layer tasks. |
| **Executable Test Propositions Preserve Behavior Meaning** | Phrase durable acceptance claims as readable behavior statements that later evidence can falsify. |
| **Testable Specifications Expose Design State Spaces** | Escalate from examples to precise prose, properties, or a model when concurrency, non-determinism, partial failure, safety, or liveness creates a wider state space. |
| **Regenerable Code Requires Externalized Commitments** | Preserve durable behavior, invariants, rationale, and validation obligations without making a task plan a permanent second source of truth. |

## Select proportional depth

| Mode | Use when | Minimum useful result |
| --- | --- | --- |
| **Compact inline contract** | Local, reversible, one owner, familiar behavior, no shared contract or consequential state | Outcome, current/desired behavior, invariant, non-goal, representative example, completion evidence; continue through `scoped-change-implementation`. |
| **Standard specification** | Several interpretations, multiple surfaces, meaningful compatibility or failure behavior, delegation beyond one short implementation loop | Full change contract, affected-surface trace, ordinary and boundary examples, keyed acceptance claims, owned unknowns, readiness. |
| **Consequential specification** | Cross-service or public contract, money, permissions, privacy, regulated data, destructive effects, long-lived state, partial failure, or hard-to-reverse behavior | Standard result plus accountable owners, wider failure/recovery and compatibility claims, specialist decisions, independent challenge needs, and explicit non-readiness until material gaps are owned. |

Depth is a judgment, not a form-size target. A small diff can deserve consequential specification when it changes a shared invariant; a broad mechanical edit may need only a compact contract when behavior is fixed and evidence is strong.

## Compact specification record

### Change frame

- Outcome and why now:
- Request source and accountable decision owner:
- Target users, callers, and environment:
- Consequence of wrong behavior:
- Evidence inspected and confidence:

### Behavior delta

| Dimension | Current | Desired | Preserve | Evidence status |
| --- | --- | --- | --- | --- |
| User or caller behavior | | | | |
| Domain decision or invariant | | | | |
| State and effects | | | | |
| Errors, failure, and recovery | | | | |
| Consumer or compatibility behavior | | | | |
| Quality or operating constraint | | | | |

Use only relevant rows. Classify evidence as confirmed, inferred, assumed, proposed, or unresolved.

### Example discovery

| Case | Prior state and input | Action | Predicted outcome(s) | Disagreement or rule learned | Disposition |
| --- | --- | --- | --- | --- | --- |
| Ordinary positive | | | | | probe / representative claim |
| Ordinary negative | | | | | probe / representative claim |
| Boundary or edge | | | | | probe / representative claim |
| Failure, retry, order, identity, time, or permission | | | | | probe / representative claim |

Probe likely disagreement, not every combinatorial case. When outcomes differ, preserve the competing interpretations until the accountable owner resolves the rule.

### Scope and surface

- Smallest coherent behavior slice:
- Explicit non-goals:
- Product and interface surfaces:
- Domain, state, data, and effect owners:
- Consumers, dependencies, contracts, and compatibility:
- Permissions, privacy, security, failure, recovery, telemetry, and release controls when relevant:
- Accepted design constraints cited by key and label:

### Acceptance claims

| Change key and label | Behavioral claim | Representative conditions | Important assumption or limit | Evidence owner to route |
| --- | --- | --- | --- | --- |
| `CHG-* — plain-language label` | | | | |

The specification owns the claim. `software-verification` owns methods, fixed
oracles, and observed results; `observability-design` owns runtime signal
semantics.

### Unknowns and readiness

| Unknown or disagreement | Consequence | Owner | Smallest resolution path | Blocks which slice? |
| --- | --- | --- | --- | --- |

- Readiness: ready / ready with owned follow-through / not ready
- Accountable confirmation required:
- What an implementer may rely on:
- What an implementer must not infer:
- Routed follow-up skills:

## Boundary routes

- **Underlying customer problem or value is uncertain:** `product-opportunity-discovery`.
- **Priority or capacity commitment is unsettled:** `product-opportunity-prioritization`.
- **Terms, rules, or invariants remain disputed:** `domain-modeling`.
- **Module or service responsibility is the actual open decision:** `deep-module-design` or `service-boundary-design`.
- **Shared API, event, schema, or protocol compatibility changes:** `software-contract-evolution`.
- **Supported obligations must move to an accepted replacement through controlled transition states, with old authority intended to become retireable:** `migration-planning`.
- **Failure cause is not supported:** `software-failure-diagnosis`.
- **Only internal structure should change:** `behavior-preserving-refactoring`.
- **A fixed bounded contract is ready and implementation is authorized:** `scoped-change-implementation`.

Routing can happen inside the same conversation. Preserve keys and labels; do not require a new file at every boundary.

At a routed boundary, state the behavioral obligation, affected parties,
decision consequence, and what downstream claims remain conditional. Do not
select the service owner, protocol shape, compatibility mechanism, transition
sequence, or evidence method on behalf of its owning skill merely to produce a
complete-looking specification.
