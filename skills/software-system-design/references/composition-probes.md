# Composition Probes

Use only the probes that can change the current candidate. Record answers in the
existing design view; this reference does not require a separate artifact.

## Completion and durable state

- Define the application outcome before choosing the acknowledgement boundary.
  A received request, queued message, committed record, and user-visible completed
  operation can represent different commitments. Name what survives each failure.
- Locate authoritative state and derived copies. Trace who may change each fact,
  when copies become visible, and how stale or conflicting views are resolved.
- For a state change followed by an external effect, stop the trace between them.
  Determine how another attempt detects completed, absent, or uncertain work.
  Compare atomicity, restartability, reconciliation, and compensation only within
  accepted behavioral and recovery constraints; do not invent acceptable loss.
- Check application identity across duplicate requests and recovery. Transport
  deduplication cannot by itself recognize a caller creating a new semantic retry.
  Expose retention, ordering, and concurrency assumptions without prescribing one protocol.

## Interfaces and execution

- Treat an interface as the assumptions needed by both sides to reason correctly,
  including errors, lifecycle, resource use, and timing when consequential.
- Trace a cancelled, interrupted, or restarted operation. Name who owns the producer,
  consumer, resource cleanup, durable progress, and any work continuing after cancellation.
- At remote boundaries, identify local guarantees that disappear. Replace implicit
  shared memory, call completion, or failure propagation with explicit obligations.
- Compare broad payloads with references to authoritative data. Include copying,
  stale state, privacy exposure, contract coupling, and extra reads or dependencies.
- Test one plausible change through the candidate. Identify coordinated edits,
  dependency cycles, or leaked state that defeats the claimed separation.

## Normal operation and recovery capacity

- Estimate only quantities that discriminate options: demand, data volume, working
  set, service time, fan-out, queue growth, or recovery duration. Use evidence-backed
  inputs or labeled ranges; precise-looking arithmetic does not improve unknown inputs.
- Separate the normal path from the worst case. Check whether overload, retries,
  repair, and restart consume the same exhausted resources as ordinary work.
- For caches, hints, or replicas, identify the truth check and invalidation/recovery
  path. An optimization must not become an unacknowledged correctness dependency.
- Compare a simple surviving option before adding distribution or generality.
  Name the measurable pressure that justifies extra operating obligations.
- Return the dominant assumption and the next discriminating measurement. Route a
  sustained capacity model to `service-capacity-engineering`; this design probe is
  not a measured operating envelope or production capacity approval.
