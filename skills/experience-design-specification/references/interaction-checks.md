# Interaction checks for web experiences

Use the checks relevant to the proposed task. Prefer the product's established
accessible components. When their behavior is unknown, state the gap and inspect
the applicable official pattern before prescribing detailed interactions.

## Forms and feedback

Explain required input and format before submission. Specify when validation
appears, how an error identifies its field, and how the user corrects it.
Keep relevant entered values available during correction unless an accepted
security or privacy rule requires otherwise. Define overall completion feedback
and field feedback separately. Do not rely on color alone to convey status.
For dynamic feedback, specify what is announced without forcing a focus move
for every update. Choose focus movement appropriate to the task and error scope.

For detailed form behavior, consult W3C's
[user-notification guidance](https://www.w3.org/WAI/tutorials/forms/notifications/).

## Keyboard and changing content

Define a predictable navigation order, a visible focus location, and where focus
goes when an active control disappears or a dialog closes. Distinguish focus
from selection. For composite widgets, follow the relevant established pattern
for entering, moving within, activating, and leaving the control. Do not make
navigation trigger slow or consequential actions merely by moving focus.

For control-specific decisions, consult the W3C APG
[keyboard-interface guidance](https://www.w3.org/WAI/ARIA/apg/practices/keyboard-interface/).

## Structure and changing layouts

Express meaningful headings, regions, labels, and reading order alongside visual
hierarchy. Preserve access to the main task without traversing repeated content.
For narrower layouts or longer text, state how comparison and action context
remain available; shrinking a desktop mockup is not a responsive design decision.
Where precise sizing, contrast, zoom, or motion requirements matter, identify the
applicable standard and component guidance instead of inventing thresholds.

For semantic structure, consult W3C's
[page-structure guidance](https://www.w3.org/WAI/tutorials/page-structure/).

These are design checks, not a complete accessibility standard or a compliance
assessment. Record the applicable target when known; evaluate implementation
and representative assistive-technology behavior before making conformance claims.
