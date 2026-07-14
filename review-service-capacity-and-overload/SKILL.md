---
name: review-service-capacity-and-overload
description: Review an online, asynchronous, batch, storage, or shared service's end-to-end capacity model and behavior near or beyond saturation. Use for capacity plans, launch or peak readiness, nonlinear latency, queue growth, retry storms, fan-out, noisy-neighbor risk, failover headroom, load-test design, admission control, backpressure, load shedding, or incidents where nominal resource utilization did not explain collapse. Do not use as a complete cloud-cost optimization or financial forecasting workflow.
---

# Review Service Capacity and Overload

Treat capacity as an end-to-end service property. A component benchmark or average utilization number is not proof that useful work completes within the service promise.

## Capacity review workflow

1. **Define useful completion.** State the service boundary, demand units, workload classes, populations, correctness conditions, latency or freshness objectives, and the point where work is actually complete.
2. **Describe demand.** Quantify arrival rate, concurrency, payload or job size, read/write mix, skew, fan-out, burst shape, seasonality, retries, and whether callers are open-loop, closed-loop, or partly self-throttling.
3. **Build the end-to-end model.** Trace queues, pools, locks, CPUs, memory, storage, networks, dependencies, control planes, and human operations. Identify serial, parallel, coordinated, and shared-resource sections.
4. **Find candidate constraints.** Use throughput, latency distributions, queue age, saturation, service time, concurrency, rejection, and work-in-progress. Look for utilization knees and coordination costs rather than assuming linear scaling.
5. **Falsify the model.** Design load and fault tests around realistic mixes, skew, bursts, dependency behavior, long enough duration, and useful-completion oracles. Compare predictions with observations and revise the model.
6. **Set limits and headroom.** Define normal operating envelope, reserve purpose, failover demand, elasticity lag, recovery demand, and uncertainty. Do not count the same reserve twice.
7. **Design overload semantics.** Layer quotas, concurrency or capacity tokens, admission control, bounded queues, backpressure, priority, degradation, and shedding at boundaries that can preserve intent.
8. **Protect recovery.** Check retries, drains, replay, autoscaling, cache refill, failover, operator access, and control paths. A system that survives load but cannot recover safely is not protected.
9. **Make operation inspectable.** Define signals, thresholds, owners, playbooks, and recalibration triggers. Tie them to user-visible completion and each protective mechanism.

Use [references/capacity-overload-review.md](references/capacity-overload-review.md) for the model and findings.

## Quality gates

- Demand and capacity use compatible units at an explicit boundary.
- The model includes queues, dependencies, fan-out, coordination, and completion semantics where relevant.
- Tests challenge assumptions with realistic workload shape and duration.
- Headroom has a named purpose and includes failure and recovery states.
- Each overload control defines what is accepted, delayed, degraded, rejected, or shed.
- Backpressure crosses boundaries in a form the caller can act on.
- Production signals can distinguish rising demand, slower service, blocked drain, and control activation.

## Reject weak reviews

- CPU alone as the capacity model.
- Average latency where tails or fan-out determine completion.
- Maximum benchmark throughput presented as a safe operating limit.
- Unbounded queues as a way to avoid rejection.
- Retries without budgets, deadlines, jitter, and overload interaction.
- Autoscaling assumed instantaneous or independent of the saturated control plane.
- Load tests that omit realistic skew, dependencies, correctness, or recovery.

## Completion

Return the demand and completion contract, end-to-end model, candidate constraints, prediction-versus-test evidence, safe envelope and reserve policy, overload behavior by workload class, recovery risks, operating signals, actions, owners, and unresolved uncertainty. Report resource cost only as an observed constraint or tradeoff; do not claim a complete cost-economic model.
