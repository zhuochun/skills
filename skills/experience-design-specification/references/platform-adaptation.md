# Adapt an experience to its environment

Use only the branches that change the current design. Recover target platforms
and supported versions, existing conventions, user circumstances, input and
assistive modes, usable window space, and relevant lifecycle limits. When a
platform is unspecified, inspect available evidence or ask a decision-changing
question; do not silently select a web experience.

Keep purposes, terminology, effects, and truthful status shared where the product
requires them. Adapt how people reach, perform, and verify those actions. For
each material difference, state the environmental constraint, proposed behavior,
preserved state, and unresolved dependency within the existing design view.

## Native mobile and tablet

Determine how system Back, in-app navigation, sheets, and external entry return
people to their work. Distinguish navigation from cancellation or discarding.
Where relevant, specify what remains after a permission prompt, camera or picker
handoff, backgrounding, termination, or relaunch. Keep desired restoration
separate from confirmed persistence and background-execution capabilities.

Consider reach, precision, text scaling, assistive input, and interruptions in
the actual use context. Provide discoverable alternatives when a gesture cannot
be the only reliable path. Do not assume touch is the only input on a tablet.
Adapt panes to available window space while preserving selection, drafts, and
navigation meaning where required; resizing is not itself a user navigation act.

Consult the relevant current official guidance before settling platform-specific
behavior: [Android adaptive navigation](https://developer.android.com/develop/ui/views/layout/build-responsive-navigation),
[Apple layout](https://developer.apple.com/design/human-interface-guidelines/layout),
and [Apple launch and restoration guidance](https://developer.apple.com/design/human-interface-guidelines/launching).
These sources inform experience decisions; do not copy their implementation
architecture into the specification.

## Native desktop and windowed experiences

Determine whether the task uses one or multiple windows and which document,
selection, or window a command affects. Specify relevant resize, close, quit,
and reopen behavior separately. Preserve accepted save and recovery rules;
do not invent autosave, conflict resolution, or multiwindow support.

Give common commands discoverable paths and appropriate keyboard, pointer,
touch, or pen access. Reconcile window-local selection with shared content when
the same resource can appear twice. Explain a continuity or conflict dependency
instead of silently choosing a data policy. Do not reduce desktop adaptation
to denser spacing or assume a tablet cannot have independent windows.

Consult [Apple window guidance](https://developer.apple.com/design/human-interface-guidelines/windows)
or the target Windows guidance on
[input](https://learn.microsoft.com/en-us/windows/apps/develop/input/input-primer)
and [windowing](https://learn.microsoft.com/en-us/windows/apps/develop/ui/windowing-overview).

## Responsive web

Determine which destinations need direct entry, browser Back/Forward, or reload
continuity. Specify the user-visible behavior without selecting URL or storage
implementation. Adapt to available space, zoom, content length, and actual input
capabilities rather than labeling every narrow window a phone.

Preserve information relationships when reflowing. If a comparison genuinely
depends on two dimensions, explain how users retain that comparison and reach
its controls instead of automatically turning every row into a card. Use
[W3C reflow guidance](https://www.w3.org/WAI/WCAG22/Understanding/reflow.html)
for applicability and exceptions, and
[interaction checks](interaction-checks.md) for web structure and feedback.

## Other environments and evidence limits

For an unlisted environment, derive the same constraints from its actual input,
presentation, navigation, and lifecycle model and consult its official guidance.
Do not copy a phone or desktop pattern by analogy alone. If guidance or capability
evidence is unavailable, label the proposal and name the smallest next check.

Walk through a relevant transition, not just the endpoint screens. Distinguish
design reasoning, prototype observations, and real platform or assistive-device
evidence. A successful trial on one platform does not validate the others.
