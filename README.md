# Evidence-Based Product and Software Engineering Skills

Make consequential product and engineering work inspectable, not merely
plausible. This collection provides agent skills for decisions, artifacts, and
actions that need stronger reasoning than a generic checklist.

Its workflows are designed to:

- ground claims in repository, runtime, customer, and organizational evidence;
- distinguish observations, inferences, assumptions, and unresolved questions;
- give each decision or artifact one clear owner without imposing a universal
  lifecycle;
- scale ceremony and independent challenge with consequence and
  irreversibility; and
- preserve accountable human authority for risk, investment, release, and
  operational decisions.

The result is work that can be challenged, resumed, verified, and acted on—not
just polished output that sounds confident.

## Get started

To install selected skills across supported agents, use `skills.sh`:

```sh
npx skills add zhuochun/skills --list
npx skills add zhuochun/skills --skill architecture-surface-mapping
```

Codex users can add the marketplace below, then install the `bicrement` plugin
from the Plugins Directory:

```sh
codex plugin marketplace add zhuochun/skills
```

For package selection, project-scoped installation, live links, dry runs,
diagnosis, or safe uninstall, clone the repository and use its installer:

```powershell
git clone https://github.com/zhuochun/skills.git zhuochun-skills
Set-Location -LiteralPath '.\zhuochun-skills'
.\install\install.ps1
```

```sh
git clone https://github.com/zhuochun/skills.git zhuochun-skills
cd zhuochun-skills
sh install/install.sh
```

See the [installation guide](docs/installation.md) for targets, packages,
non-interactive commands, local plugin development, and update instructions.

Invoke a directly installed skill by name. Plugin runtimes may add a namespace;
the Codex plugin uses `$bicrement:skill-name`.

```text
Use $architecture-surface-mapping to orient me to this unfamiliar system before I change it.
Map the critical runtime, data, dependency, observability, and recovery
surfaces, distinguish confirmed evidence from unknowns, and recommend the next
probes. Do not modify the repository.
```

## Choose a starting point

These skills are the collection's implicit front doors for common top-level
intents. You can also invoke any specialist explicitly.

| When you need to... | Start with |
| --- | --- |
| Determine what high-trust sources support about a bounded question | [`research-synthesis`](skills/research-synthesis/) |
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
