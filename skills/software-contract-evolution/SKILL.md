---
name: software-contract-evolution
description: Design how public or internal software contracts evolve while independently changing producers, consumers, and stored state coexist. Use for APIs, events, schemas, protocols, library interfaces, commands, or integrations involving compatibility, versioning, deprecation, consumer migration, semantic translation, mixed-version behavior, or retirement. Recover the actual contract and support promise, compare compatible-growth and breaking options, define adoption and translation obligations, and require risk-specific evidence before removal.
---

# Software Contract Evolution

Preserve independent change without pretending that a type signature is the whole contract. Design the contract lifecycle from current reliance through compatible growth, consumer adoption, and evidence-based retirement.

## Preserve authority and trust

- Design and recommend by default. Do not change an interface, publish a version, announce a deprecation, contact consumers, or remove support unless the request authorizes it.
- Identify the contract owner, producer owners, known consumer owners, data owner, support-policy owner, and accountable retirement decision owner. Do not silently assign migration work or shorten a support promise.
- Treat public, external, generated, copied, cached, or otherwise unobservable consumers as a distinct risk. Absence of observed use is not proof of absence.
- Make security, privacy, legal, regulatory, and urgent correctness constraints explicit. Compatible growth is a preference, not permission to preserve an unsafe behavior indefinitely.
- For `discuss`, `review`, `assess`, `design`, or `plan`, remain read-only and return the contract decision and unresolved evidence.

## Evolution workflow

1. **Frame the contract and decision.** Name the contract surface, producer, consumers, authoritative facts, current and proposed behavior, change driver, support promise, deadline, and consequence of incompatibility. Distinguish an internal coordination agreement from a public compatibility commitment.
2. **Recover the actual contract.** Inspect declarations, documentation, examples, generated clients, tests, call sites, stored representations, runtime use, support history, and consumer workarounds. Record syntax, meaning, invariants, defaults, errors, ordering, delivery, idempotency, timing, authorization, and relevant performance expectations. Mark each dependency as declared, observed, inferred, or unknown.
3. **Classify the change.** Separate additive fields or operations, relaxed inputs, explicit new names, semantic reinterpretation, tighter validation, new error or terminal states, altered ordering or delivery, representation changes, and removal. Do not call a change compatible until the affected dimensions and consumer populations are named.
4. **Build the compatibility matrix.** Trace supported producer, consumer, stored-state, and executor versions. State what each combination reads, writes, ignores, rejects, retries, or misinterprets. Include delayed messages, replay, rollback, stale workers, caches, and offline or infrequently active consumers when relevant.
5. **Resolve meaning and translation.** When neighboring systems use different meanings, decide whether to share a published language, conform deliberately, or translate at an anti-corruption boundary. Define the mapping owner, loss, defaults, unknown values, validation, error behavior, reversibility, and tests. Use `domain-modeling` when the semantic model itself is disputed; do not disguise a meaning change as field renaming.
6. **Prefer compatible growth.** Favor additive optional capability, relaxed acceptance, and explicit new names whose meaning can remain stable. Preserve old readers and writers long enough for independent adoption. Reject in-place reinterpretation merely because the wire shape remains parseable.
7. **Design deprecation as migration.** Provide a usable replacement; prevent new adoption; inventory and segment remaining consumers; assign consumer migration ownership; supply documentation, examples, adapters, tooling, diagnostics, or automated changes appropriate to the population; define feedback and support channels; and state the support window, exception policy, and escalation path. A notice and deadline alone are not a migration mechanism.
8. **Define transition obligations.** At the contract level, state the supported producer-consumer-state-executor combinations, compatibility invariants, semantic authority rules, and conditions needed for adoption and retirement. Do not expand these obligations into a second executable transition-state model. Route technical movement states, operational authority transfer, cutover, retreat or compensation, and cleanup sequencing to `migration-planning`; route multi-workstream adoption flow and dependency steering to `technical-program-orchestration`.
9. **Define evidence obligations.** Give each consequential claim a stable key and label, such as `CTR-old-consumers-drained — Supported consumers no longer use v1`. Specify what must be learned, which population and lifecycle must be represented, and what uncertainty remains. Use `observability-design` for usage and behavior signals, and `verification-strategy-design` for methods, oracles, evidence limits, and renewal.
10. **Gate retirement by risk.** Require evidence matched to the old contract's remaining obligations: consumer drainage for compatibility risk, representative old/new comparison for behavioral risk, reconciliation and invariants for state risk, and leases or fencing for stale executors that could restore old state. Observe a meaningful lifecycle, remove in dependency order, and leave the accountable owner to accept residual risk.
11. **Close the lifecycle.** Remove obsolete versions, adapters, flags, writes, schemas, documentation, telemetry, permissions, and support procedures only after their exit criteria pass. Record intentional residual compatibility and its owner instead of calling permanent temporary machinery complete.

## Compose without losing ownership

- `domain-modeling` owns disputed domain meaning and semantic context; this skill owns how that meaning is exposed and evolved as a contract.
- `service-boundary-design` owns whether responsibility, data, deployment, or team boundaries should move; this skill owns the consumer-facing compatibility obligations at the chosen boundary.
- `migration-planning` owns the executable current-to-transition-to-target movement, authority transfer, cutover, retreat or compensation, and cleanup sequence. This skill supplies the compatibility matrix, support policy, consumer obligations, and retirement claims.
- `technical-program-orchestration` owns interdependent workstream frontiers, dependencies, integration, decision latency, and replanning for consumer adoption. It does not redefine the contract.
- `controlled-release-design` owns optional cohort or feature exposure controls, not contract semantics or deprecation policy.
- `observability-design` owns measurement contracts. `verification-strategy-design` owns falsifying methods and oracles. `verification-execution` runs fixed claims and preserves results.
- `architecture-risk-evaluation` challenges consequential quality and operating scenarios; the contract designer does not self-certify the proposed evolution.

Keep composed work in the existing flow. Reference contract claims by key and plain-language label rather than creating a mandatory handoff document.

## Quality gates

Do not call the design ready until:

- the actual contract includes relevant semantic and operational behavior, not only schema shape;
- declared, observed, inferred, unknown, and unobservable consumer reliance are distinguished;
- supported producer, consumer, state, and executor combinations are explicit;
- the chosen option states which compatibility dimensions it preserves and intentionally breaks;
- semantic differences have an owned translation or an explicit decision not to translate;
- deprecation has a replacement, prevention of new adoption, migration ownership, and consumer feedback;
- adoption and retirement claims have representative, risk-specific evidence obligations;
- urgent security or correctness needs and residual compatibility risk have accountable owners;
- transition, verification, observability, program, and decision responsibilities remain with their canonical skills;
- temporary compatibility machinery has removal criteria and an owner.

## Reject false compatibility

- A new semantic version number does not prove compatibility or make a break affordable.
- An additive field, enum value, error, or event is not automatically safe for strict, exhaustive, generated, or storage-coupled consumers.
- Parseable messages can still disagree in meaning, defaults, ordering, authority, or side effects.
- Consumer-driven contract tests demonstrate sampled expectations, not every consumer or production condition.
- A deprecation warning does not migrate consumers, and a date does not prove they have moved.
- Runtime silence does not prove absence when telemetry, lifecycle coverage, or consumer identity is incomplete.
- A translation wrapper is not an anti-corruption boundary if foreign meanings continue to govern the local model.
- Dual support is not complete while no one owns divergence, support cost, or retirement.
- Avoid synchronized flag days unless constraints make independent adoption impossible and accountable owners accept the risk.

## Completion output

Return a compact contract-evolution decision containing:

- contract surface, parties, authority, support promise, and evidence confidence;
- actual contract dimensions and consumer reliance;
- producer-consumer-state-executor compatibility matrix;
- considered evolution options and chosen compatibility policy;
- semantic translation decision and obligations;
- deprecation, adoption, and support approach;
- named evidence obligations, retirement criteria, and residual unknowns;
- accountable owners and explicitly routed follow-up work.

Separate confirmed evidence from inference. If the consumer population, semantic meaning, or retirement evidence is too weak, recommend retaining compatibility or running the next focused probe rather than inventing certainty.
