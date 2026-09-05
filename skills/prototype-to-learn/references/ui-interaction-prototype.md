# UI and Interaction Prototype

Use this branch when hands-on use can test one UI direction or compare page
structure, information hierarchy, workflow presentation, or interaction alternatives.

## Shape the artifact

1. Prefer an existing route, shell, navigation frame, and data-loading seam.
   Mount a prototype inside the real context when that context affects density,
   hierarchy, or comprehension.
2. For one candidate's mechanism or interaction test, build one representative
   candidate. For a comparison, build the smallest set that distinguishes the
   alternatives; honor an explicit requested count. Add a candidate only when
   it tests another material structural or interaction hypothesis.
3. For comparisons, make variants structurally different. Change layout, information hierarchy,
   navigation, workflow sequence, or primary affordance rather than only color,
   spacing, component skin, or copy.
4. Hold the question, data, constraints, viewport, and available actions
   constant across variants so the comparison remains interpretable.
5. When several candidates exist, provide one obvious selection mechanism. Prefer a shareable URL parameter
   when the existing router supports it; otherwise use a clearly labeled local
   switcher that cannot be mistaken for product UI.
6. Preserve normal route behavior when no explicit prototype selector is
   present. Exclude prototype dispatch and controls from production builds or
   runtimes. If the host cannot isolate them, use a clearly disposable local
   route and report that fidelity limit.
7. Keep real reads when safe and material to fidelity. Stub or contain writes,
   external effects, payments, notifications, and destructive actions.
8. Preserve baseline keyboard access, focus visibility, labels, contrast, and
   responsive behavior where omitting them could create a false preference.
   Do not turn the prototype into a full accessibility or design-system audit.
9. Provide one repository-native start command and the exact route or URLs for
   every variant.

Keep variant components independent enough to explore different structures.
Share stable application chrome, data acquisition, and domain values when
doing so keeps the comparison honest.

## Hand over the learning artifact

Give the user:

- the start command and variant URLs or controls;
- the question and shared constraints;
- a short neutral label for each variant;
- the interactions worth trying;
- the effects that are stubbed or read-only; and
- the observations that would support, disconfirm, or leave the direction
  inconclusive.

Capture what the user observes and why it supports or challenges the question.
For comparisons, also record the chosen structure, affordance, or transition.
The useful result may combine elements from several variants. Preserve that
decision, not a claim that the winning prototype is production-ready.

## Reject weak UI prototypes

- Do not compare decorative themes when the question concerns structure.
- Do not place variants in an empty page when the surrounding shell or real
  density would change the judgment.
- Do not give one variant richer data, working actions, or more polish than the
  others without naming the confounder.
- Do not let prototype controls look like part of the proposed product.
- Do not wire exploratory controls to real mutations.
- Do not replace the ordinary route or make prototype dispatch reachable in
  production by default.
