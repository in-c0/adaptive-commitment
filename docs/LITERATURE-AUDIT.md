# Literature audit — REQUIRED, NOT STARTED

**Gate 1 of the execution order. Nothing below step 2 may be built until this
exists and has been read.**

## Why this blocks everything

Deliberation timing is a crowded field with several mature literatures that each
own part of the question. A benchmark built before the audit will encode
assumptions the audit would have refuted, and the audit then becomes a formality
scored against a question the benchmark already decided.

Two sibling tracks demonstrate the failure mode and the fix:

- `plasticity-routing` set a **deliberately low prior** on its own hypothesis
  after finding a published negative result (Yoon 2026) for the closest
  comparison, and made the fixed heuristic its primary comparator rather than a
  courtesy baseline. Its confirmatory result is credible partly because of that.
- `modular-consolidation` found every individual module operation already owned
  by prior work, and reframed its contribution as **attribution** rather than
  architecture.

Either outcome is acceptable here. Discovering the question is answered is a
result; discovering it is answered and building the benchmark anyway is not.

## Required coverage

Each area: what it owns, what it has already shown, and what it leaves open.

1. **Anytime and interruptible computation** — algorithms that can be stopped and
   still return something useful; meta-reasoning about when to stop.
2. **Speed–accuracy tradeoff and decision timing** — sequential sampling,
   drift-diffusion and optimal stopping accounts, including the human literature.
3. **Abstention, deferral and escalation** — selective prediction, learning to
   defer to a human, cascade and reject-option models.
4. **Active learning and the value of a question** — when asking is worth its
   cost; expected value of information.
5. **Adaptive computation in models** — early exit, halting mechanisms,
   budget-conditioned inference.
6. **Agent action gating** — tool-call gating, confirmation policies, and the
   cost of irreversible actions in deployed agent systems.

## Required output

- For each area: **what is owned**, and by whom.
- **What survives** as genuinely open. If nothing survives, say so and close.
- **The nearest published negative result.** Every CCS track has one; find this
  track's, and set the prior accordingly.
- **A recommended prior** on the surviving hypothesis, stated before any
  benchmark exists.

## What may not happen here

- No benchmark design.
- No claim proposed to the CCS umbrella.
- No code.
