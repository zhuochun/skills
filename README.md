# Product and Software Engineering Skills for Codex

This repository contains 30 reusable Codex skills for consequential product
and software-engineering work. Each skill owns a distinct decision, reasoning
artifact, or action so that you can use the smallest workflow appropriate to
the task instead of adopting a mandatory lifecycle.

The skills require evidence, expose uncertainty, preserve accountable human
decisions, and distinguish producing an artifact from independently evaluating
whether it works.

## Get started

Clone the collection:

```powershell
git clone https://github.com/zhuochun/skills.git zhuochun-skills
Set-Location -LiteralPath '.\zhuochun-skills'
```

Run the interactive installer and choose an individual skill or package, then a
user, project, or custom destination:

```powershell
.\install\install.ps1
```

```sh
sh install/install.sh
```

Both scripts install, diagnose, and safely uninstall live directory links for
user-scoped `.agents`, `.codex`, and `.claude` skills; their project-scoped
equivalents; or an exact custom directory. See the
[installation guide](docs/installation.md) for topic bundles, workflow
profiles, non-interactive examples, dry runs, and Windows junctions.

You can also use the cross-agent `skills.sh` installer to select skills from
this public repository:

```sh
npx skills add zhuochun/skills --list
npx skills add zhuochun/skills --agent codex --skill architecture-surface-mapping
```

For Codex, the complete catalog is available as one Marketplace plugin. Add
the marketplace with `codex plugin marketplace add zhuochun/skills`, then
install **Bicrement** from the Plugins Directory. The installation guide
includes local-development and update commands.

Invoke the skill explicitly:

```text
Use $architecture-surface-mapping to orient me to this unfamiliar system before I change it.
Map the critical runtime, data, dependency, observability, and recovery
surfaces, distinguish confirmed evidence from unknowns, and recommend the next
probes. Do not modify the repository.
```

## Choose a starting point

These six skills are the collection's implicit front doors for common
top-level intents. You can also invoke any specialist explicitly as
`$skill-name`.

| When you need to... | Start with |
| --- | --- |
| Orient to unfamiliar software before changing or operating it | [`architecture-surface-mapping`](skills/architecture-surface-mapping/) |
| Specify an accepted but behaviorally ambiguous software change | [`software-change-specification`](skills/software-change-specification/) |
| Implement an authorized bounded behavior change | [`scoped-change-implementation`](skills/scoped-change-implementation/) |
| Improve structure without intentionally changing supported behavior | [`behavior-preserving-refactoring`](skills/behavior-preserving-refactoring/) |
| Diagnose a bug, regression, intermittent failure, or performance problem | [`software-failure-diagnosis`](skills/software-failure-diagnosis/) |
| Independently review a bounded software change | [`code-review`](skills/code-review/) |

If none of these describes the missing decision or artifact, use the
[full skill catalog](docs/catalog.md).

## Explore the collection

- [Installation guide](docs/installation.md) — install, diagnose, or uninstall
  a skill, topic bundle, or workflow profile in a user, project, or custom
  skills directory.
- [Skill catalog](docs/catalog.md) — choose the owner of the decision, artifact,
  or action you need.
- [Skill boundaries and relationships](docs/skill-boundaries.md) — compare
  neighboring skills and understand the directed relationship graph.
- [Composition guide](docs/composition-guide.md) — combine skills when a request
  genuinely spans several decisions or artifacts.
- [Example prompts](docs/example-prompts.md) — adapt complete invocations for
  common product, engineering, architecture, delivery, and operational work.

The catalog is a directed graph, not a required stage-gate process. A local
reversible feature may need only implementation and repository checks. A risky
multi-workstream transition may warrant independent design, planning, review, and
verification. Use only the nodes justified by the decision and its consequence.

## Repository development

Source skill directories live under [`skills/`](skills/):

```text
skills/
└── skill-name/
    ├── SKILL.md
    ├── agents/
    │   └── openai.yaml
    └── references/
        └── ...
```

See [CONTRIBUTING.md](CONTRIBUTING.md) for the source-grounding, distinctness,
skill-contract, composition, and verification requirements for adding or
materially changing a skill.

The [evaluation suite](evals/) compares fresh baseline and skill-assisted runs
on pinned repository tasks. Its [protocol](evals/README.md) defines isolation,
grading, hard failures, and efficiency measures.
