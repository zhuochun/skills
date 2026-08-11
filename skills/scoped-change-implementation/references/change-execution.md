# Change execution reference

Adapt these forms in the current task or repository artifact. Do not create a handoff document merely to use the skill.

## Knowledge-derived reasoning model

| Mechanism | Execution consequence |
| --- | --- |
| **Vertical Slices Localize Business Change** | Sequence work by one user-visible activity rather than completing technical layers in isolation. |
| **Concrete Examples Expose Requirement Ambiguity** | Require requested outcome differences to be distinguishable from available inputs and state; surface a missing rule or signal instead of inventing behavior. |
| **Fearless Competence Through Fast Trusted Tests** | Keep feedback fast and credible enough to guide each small step; revert or repair the latest move when it fails. |
| **Correctness Should Come From Structure, Not Vigilance** | Encode repeated important obligations in types, schemas, tests, boundaries, defaults, or guardrails instead of reviewer memory; make failure checks discriminate system behavior from harness behavior. |
| **Reversibility Preserves Adaptive Capacity** | Keep uncertain steps narrow, observable, and retreatable; remove temporary coexistence once learning stabilizes. |
| **Plan-Effect Split Makes Dangerous Actions Testable** | Make target selection and policy inspectable before destructive or external effects, then recheck stale assumptions at apply time. |
| **Duplication Reveals Stable Abstraction Boundaries** | Share proven knowledge, not merely matching text; preserve local variation evidence unless divergence would be unsafe. |
| **Code Should Minimize Meaning Search** | Optimize the finished change for the next maintainer's ability to recover intent, behavior, ownership, and constraints. |

## Compact fallback change contract

Use this when no richer `software-change-specification` result is needed. When
one exists, cite its `CHG-*` keys and plain-language labels rather than copying
the specification into this execution record.

- Outcome and observable behavior:
- Current-to-desired behavior delta:
- Supported behavior and invariants preserved:
- Consumers, data, dependencies, and operating paths affected:
- Explicit non-goals:
- Consequential assumptions:
- Required outcome distinctions and their observable signals:
- Change-specification keys and labels consumed:
- Verification keys and labels consumed:
- Observability or release keys and labels consumed:
- Authority and environmental constraints:
- Completion and cleanup conditions:

## Vertical slice record

| Slice | User or caller outcome | Seam and feedback | Code/state/effect owners touched | Evidence run | Learning and next step |
| --- | --- | --- | --- | --- | --- |

Prefer a slice that proves one meaningful behavior over a smaller collection of disconnected plumbing changes.

## Surgical-change checks

- Does every edited surface contribute to the requested outcome, preservation, evidence, or cleanup?
- Is a short local exception leaking knowledge that belongs under another owner?
- Does the change introduce a second authoritative path or representation?
- Is repeated code stable shared knowledge, unsafe duplicated policy, or still-useful variation evidence?
- Does each failure-path check reject unexpected success and distinguish the promised system failure from an assertion or sentinel created by the test?
- Can a reviewer recover the behavioral reason for each material edit without reconstructing unrelated architecture?

## Design deviation

- Assumption that failed:
- Counterexample or repository evidence:
- Why continuing would expand risk or scope:
- Smallest decision that needs revision:
- Recommended owner or skill:
- Safe state in which implementation stopped:

## Completion evidence

| Claim key and label | Method executed | Environment and inputs | Result | Evidence location | Limitation or remaining gap |
| --- | --- | --- | --- | --- | --- |

Use only results actually observed. Planned evidence belongs to `verification-strategy-design`; broader independent execution belongs to `verification-execution`.
