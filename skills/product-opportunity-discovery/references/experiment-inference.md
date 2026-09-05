# Product experiment inference

Use these checks for the experiment's decision, not as a universal statistical
test recipe. Design and interpretation do not authorize customer exposure.

## Establish validity before interpreting lift

- Define the intended effect, eligible population, randomization and analysis
  units, exposure, metric numerator and denominator, and observation window.
- Check assignment ratios, treatment crossover, missing observations, attrition,
  interference, and instrumentation against the design. An unexplained mismatch
  blocks a causal interpretation; do not silently drop affected users or change
  eligibility to obtain a clean result.
- Choose analysis from metric shape, sample information, dependence, and the
  actual observation regime. Explain eligibility and assumptions for any
  adjustment, outlier handling, or variance reduction; preprocessing can change
  the effect being estimated.
- Distinguish a fixed-horizon decision from repeated monitoring or early
  stopping. Match error control to actual stopping, treatment comparisons,
  metrics, and slices. Repeated ordinary significance checks do not preserve a
  fixed-horizon guarantee.

## Make the result decision-usable

Report effect magnitude, uncertainty, practical decision threshold, guardrails,
and the sample or power limitations relevant to the claim. Statistical
significance alone does not establish useful value; an inconclusive or
underpowered result does not establish equivalence or safety.

When method assumptions or calibration are unsupported, return a conditional
result and name the data or statistical expertise needed. Do not substitute a
default test or invent a universal sample size. Keep customer-value judgment
with discovery, production signal contracts with `observability-design`, and
exposure and abort authority with `controlled-release-design`.
