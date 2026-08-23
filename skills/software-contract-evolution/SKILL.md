---
name: software-contract-evolution
description: Design how software contracts evolve while independently changing producers, consumers, and stored state coexist. Use for APIs, events, schemas, protocols, libraries, commands, or integrations involving compatibility, versioning, deprecation, translation, mixed versions, or retirement. Recover the actual support promise, compare evolution options, define adoption obligations, and require risk-specific evidence before removal.
---

# Software Contract Evolution

Preserve independent change without pretending that a type signature is the whole contract. Design the contract lifecycle from current reliance through compatible growth, consumer adoption, and evidence-based retirement.

## Preserve authority and trust

- Design and recommend by default. Do not change interfaces, publish versions, announce deprecations, contact consumers, or remove support without authorization.
- Identify contract, producer, consumer, data, support-policy, and retirement owners. Do not assign migration work or shorten support promises.
- Treat public, external, generated, copied, cached, or otherwise unobservable consumers as a distinct risk. Absence of observed use is not proof of absence.
- Make security, privacy, legal, regulatory, and urgent correctness constraints explicit. Compatible growth is a preference, not permission to preserve an unsafe behavior indefinitely.
- For `discuss`, `review`, `assess`, `design`, or `plan`, remain read-only and return the contract decision and unresolved evidence.

## Evolution workflow

1. **Frame the decision.** Name surface, producer, consumers, authoritative facts, current and proposed behavior, driver, support promise, deadline, and incompatibility cost. Separate internal coordination from public commitment.
2. **Recover the actual contract.** Inspect declarations, docs, clients, tests, calls, stored forms, runtime use, support history, and workarounds. Record relevant syntax, meaning, invariants, defaults, errors, ordering, delivery, idempotency, timing, authorization, and performance. Mark reliance declared, observed, inferred, or unknown.
3. **Classify the change.** Separate additive fields or operations, relaxed inputs, explicit new names, semantic reinterpretation, tighter validation, new error or terminal states, altered ordering or delivery, representation changes, and removal. Do not call a change compatible until the affected dimensions and consumer populations are named.
4. **Build the compatibility matrix.** For supported producer, consumer, state, and executor versions, state what each combination reads, writes, ignores, rejects, retries, or misinterprets. Include delay, replay, rollback, stale workers, caches, and infrequent consumers when relevant.
5. **Resolve meaning and translation.** When neighboring systems use different meanings, decide whether to share a published language, conform deliberately, or translate at an anti-corruption boundary. Define the mapping owner, loss, defaults, unknown values, validation, error behavior, reversibility, and tests. Use `domain-modeling` when the semantic model itself is disputed; do not disguise a meaning change as field renaming.
6. **Prefer compatible growth.** Favor additive optional capability, relaxed acceptance, and explicit new names whose meaning can remain stable. Preserve old readers and writers long enough for independent adoption. Reject in-place reinterpretation merely because the wire shape remains parseable.
7. **Design deprecation as migration.** Provide a replacement; prevent new adoption; segment consumers; assign migration ownership; supply appropriate docs, adapters, tooling, diagnostics, or automation; define feedback and support; and state the window, exceptions, and escalation. A notice and deadline are insufficient.
8. **Define transition obligations.** At the contract level, state the supported producer-consumer-state-executor combinations, compatibility invariants, semantic authority rules, and conditions needed for adoption and retirement. Do not expand these obligations into a second executable transition-state model. Route technical movement states, operational authority transfer, cutover, retreat or compensation, and cleanup sequencing to `migration-planning`; route multi-workstream adoption flow and dependency steering to `technical-program-orchestration`.
9. **Define evidence obligations.** Give consequential claims stable keys and labels. Specify the learning, represented population and lifecycle, and remaining uncertainty. Route usage signals to `observability-design` and methods, oracles, evidence limits, and renewal to `verification-strategy-design`.
10. **Gate retirement by risk.** Require evidence matched to the old contract's remaining obligations: consumer drainage for compatibility risk, representative old/new comparison for behavioral risk, reconciliation and invariants for state risk, and leases or fencing for stale executors that could restore old state. Observe a meaningful lifecycle, remove in dependency order, and leave the accountable owner to accept residual risk.
11. **Close the lifecycle.** Remove obsolete versions, adapters, flags, writes, schemas, documentation, telemetry, permissions, and support procedures only after their exit criteria pass. Record intentional residual compatibility and its owner instead of calling permanent temporary machinery complete.

## Compose without losing ownership

- `domain-modeling` owns disputed meaning; `service-boundary-design` owns responsibility, data, deployment, and team boundaries.
- `migration-planning` owns executable transition, authority transfer, cutover, retreat or compensation, and cleanup. This skill supplies compatibility, support, consumer, and retirement obligations.
- `technical-program-orchestration` owns adoption workstreams and dependencies; `controlled-release-design` owns optional exposure.
- `observability-design` owns measurement; `verification-strategy-design` owns falsifying methods and oracles; `verification-execution` runs fixed claims and preserves results.
- `architecture-risk-evaluation` independently challenges consequential scenarios.

Keep composed work in the existing flow. Reference contract claims by key and plain-language label rather than creating a mandatory handoff document.

## Quality gates

Do not call the design ready until:

- semantic and operational behavior, not only shape, forms the actual contract;
- declared, observed, inferred, unknown, and unobservable reliance are distinguished;
- supported producer-consumer-state-executor combinations and preserved or broken dimensions are explicit;
- when lifecycle relationships are material, the compatibility matrix or the smallest alternative self-contained text view makes current, proposed, transition, and retired contract states explicit without duplicating an equivalent representation; richer rendering is optional;
- semantic differences have owned translation or an explicit decision not to translate;
- deprecation has a replacement, blocked new adoption, migration ownership, and consumer feedback;
- adoption and retirement claims have representative risk-specific evidence obligations;
- urgent constraints, residual risk, temporary machinery, and removal criteria have owners;
- transition, verification, observability, program, and decision ownership remains canonical.

## Reject false compatibility

- Versions do not prove compatibility; additive fields, values, errors, or events may break strict, generated, or storage-coupled consumers.
- Parseability can hide disagreements in meaning, defaults, order, authority, or effects.
- Contract tests sample expectations; warnings, deadlines, or runtime silence do not prove adoption or absence.
- Translation is not a boundary while foreign meanings govern the local model.
- Dual support needs owners for divergence, cost, and retirement. Avoid flag days unless independent adoption is impossible and risk is accepted.

## Completion output

Return a compact decision covering contract and authority, support promise, actual dimensions and reliance, compatibility matrix, options and policy, translation, deprecation and adoption, evidence and retirement criteria, unknowns, owners, and routed follow-up.

Separate confirmed evidence from inference. If the consumer population, semantic meaning, or retirement evidence is too weak, recommend retaining compatibility or running the next focused probe rather than inventing certainty.
