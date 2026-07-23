---
name: service-capacity-engineering
description: Model, design, or review end-to-end service capacity and behavior near or beyond saturation across online, asynchronous, batch, storage, or shared workloads. Use for peak readiness, nonlinear latency, queue growth, retries, fan-out, noisy neighbors, failover headroom, load tests, admission control, backpressure, or shedding. Exclude complete cloud-cost optimization and financial forecasting.
---

# Service Capacity Engineering

Treat capacity as an end-to-end service property. A component benchmark or average utilization number is not proof that useful work completes within the service promise.

## Capacity review workflow

1. **Define useful completion.** State the service boundary, demand units, workload classes, populations, correctness conditions, latency or freshness objectives, and the point where work is actually complete.
2. **Describe demand.** Quantify arrival, concurrency, size, read-write mix, skew, fan-out, bursts, seasonality, retries, and caller feedback behavior.
3. **Build the end-to-end model.** Trace queues, pools, locks, CPUs, memory, storage, networks, dependencies, control planes, and human operations. Identify serial, parallel, coordinated, and shared-resource sections.
4. **Find constraints.** Use throughput, latency distributions, queue age, saturation, service time, concurrency, rejection, and work in progress. Look for knees and coordination costs, not linearity.
5. **Falsify the model.** Test representative load and fault conditions across realistic mix, skew, bursts, dependencies, duration, and useful-completion oracles. Compare prediction with observation and revise.
6. **Set limits and headroom.** Define normal operating envelope, reserve purpose, failover demand, elasticity lag, recovery demand, and uncertainty. Do not count the same reserve twice.
7. **Design overload semantics.** Layer quotas, concurrency or capacity tokens, admission control, bounded queues, backpressure, priority, degradation, and shedding at boundaries that can preserve intent.
8. **Protect recovery.** Check retries, drains, replay, autoscaling, cache refill, failover, operator access, and control paths. A system that survives load but cannot recover safely is not protected.
9. **Make operation inspectable.** Define signals, thresholds, owners, playbooks, and recalibration triggers. Tie them to user-visible completion and each protective mechanism.

Read [references/capacity-overload-review.md](references/capacity-overload-review.md) only when a durable capacity model, operating envelope, overload findings report, or review worksheet is needed.

## Quality gates

- Demand and capacity share units and boundary.
- The model includes relevant queues, dependencies, fan-out, coordination, and completion.
- Realistic tests challenge assumptions; headroom covers named failure and recovery needs.
- Overload controls define accepted, delayed, degraded, rejected, or shed work.
- Actionable backpressure crosses boundaries.
- Signals distinguish demand, slowdown, blocked drain, and control activation.

## Reject weak reviews

- Reject CPU-only models, averages hiding tails, and benchmark maxima as safe limits.
- Queues cannot defer rejection without bound.
- Retries need budgets, deadlines, jitter, and overload interaction.
- Autoscaling is neither instant nor independent of control-plane saturation.
- Load tests need realistic skew, dependencies, correctness, and recovery.

## Completion

Return the demand and completion contract, end-to-end model, candidate constraints, prediction-versus-test evidence, safe envelope and reserve policy, overload behavior by workload class, recovery risks, operating signals, actions, owners, and unresolved uncertainty. Report resource cost only as an observed constraint or tradeoff; do not claim a complete cost-economic model.
