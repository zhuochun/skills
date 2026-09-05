# Change execution reference

Adapt these forms in the current task or repository artifact. Do not create a handoff document merely to use the skill.

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

Use only results actually observed. `software-verification` owns planned
evidence, fixed oracles, and broader independent execution.
