# Behavior and State Prototype

Use this branch when the user needs to drive rules, transitions, data shapes,
or action sequences and inspect what happens.

## Shape the artifact

Before building, distinguish a supplied candidate model from disputed domain
meaning. Route disputed terms, rules, and invariants to `domain-modeling`; this
branch can exercise or compare named candidates, but it cannot make one
authoritative.

1. Use the host project's language and task runner. Prefer a lightweight
   interactive terminal surface when the project already supports a CLI. Use a
   single local page when browser controls make the behavior materially easier
   to understand.
2. Put the behavior behind a small deterministic interface: a reducer, state
   machine, pure function set, or state-owning module. Keep terminal or browser
   I/O outside that interface.
3. Seed representative starting states. Include a normal path, an order-
   sensitive path, an invalid action, and the edge case that motivated the
   prototype when those cases apply.
4. Expose each meaningful action directly. Do not make the user edit source,
   remember object shapes, or construct incidental setup before trying the
   important transition.
5. Render the full relevant state after every action. Include the last action,
   result or rejection, available next actions, and violated invariant when
   those fields explain the model.
6. Keep clocks, randomness, IDs, and sample ordering deterministic unless one
   of them is the uncertainty under study.
7. Stub writes and external effects. Use representative sanitized read-only
   data when it is safe and necessary for fidelity; otherwise use explicit
   deterministic fixtures.
8. Add one repository-native run command. Keep the initial state recoverable
   through a visible reset or restart path.

All code in this artifact remains prototype code, including the deterministic
behavior module. Promotion requires a separate maintained implementation
decision and appropriate tests.

## Hand over the observation

Give the user:

- the run command;
- the question and current assumption;
- the initial state and available controls;
- two or three revealing sequences to try;
- the known fidelity limits; and
- the observations that would support, disconfirm, or leave the question
  inconclusive.

Capture surprises such as an impossible state becoming reachable, an expected
action becoming illegal, a data shape losing meaning, or several rules needing
the same hidden context. Those are prototype results, not defects to conceal
with extra interface code.

## Reject weak behavior prototypes

- Do not combine the model and interactive shell so tightly that state cannot
  be inspected independently.
- Do not hide illegal actions without showing why they are illegal.
- Do not connect a learning artifact to authoritative data or irreversible
  effects.
- Do not generalize for hypothetical future cases.
- Do not turn scripted examples into a broad production regression suite.
