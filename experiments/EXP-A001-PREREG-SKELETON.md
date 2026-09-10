# EXP-A001 preregistration — SKELETON, BLOCKED

**Status: SKELETON. Blocked on the literature audit (gate 1) and on a falsifiable
claim (gate 2).** Every substantive field below is `TO BE DERIVED`. This file
exists to fix the *shape* of the eventual protocol so that the audit cannot be
quietly skipped, not to reserve a hypothesis.

## 1. Claim — `TO BE DERIVED FROM THE AUDIT`

One sentence, falsifiable, with its falsifier stated alongside.

**It must not be written before the audit.** If a claim appears here first, the
audit will be read looking for permission rather than for prior art.

## 2. Action space — `TO BE FROZEN`

Candidate: `WAIT`, `THINK`, `ASK`, `RESPOND`, `ACT`.

Justification required, not assumed. `plasticity-routing`'s precedent: it
admitted its four-action space only on condition that the empirically optimal
class→action mapping is a **bijection**, and it tested that rather than asserting
it. An action that no situation ever makes optimal is not part of the space.

Open question the audit must settle: whether `ACT` (irreversible, outward) and
`RESPOND` (reversible, conversational) are one axis or two. If reversibility is a
separate dimension from timing, the design is a factorial, not a five-way choice.

## 3. Cost model — `TO BE DERIVED`, and the hardest part

Must produce an explicit position on umbrella open problem **OP-1**: latency and
intervention cost have no non-arbitrary exchange rate with machine-denominated
resources.

Requirements:

- The exchange rate is **declared as a choice**, not embedded silently.
- Results are reported **across a range of rates**, not at one point. A single
  chosen rate is a result about that rate.
- If no defensible rate exists, that is a finding to report, not a gap to paper
  over with a plausible-looking weighted sum.

## 4. Benchmark — `TO BE DESIGNED`, after gates 1–3

Calibration criterion must mention **no candidate policy**. Validity gates by
programme convention: non-ceiling, non-floor, and a demonstrated range for every
factor claimed to matter.

## 5. Arms — `TO BE FROZEN`

Must include, at minimum:

- **a fixed-threshold comparator, tuned on the same budget as any learned
  policy** — the primary comparator, never weakened;
- **an immediate-response control** (`RESPOND` always) — the "no deliberation"
  anchor, and the arm any claim of useful deliberation must beat by more than
  the pooled CI;
- **a count-matched control** that spends the same deliberation budget on
  arbitrary items, so an advantage cannot be volume of thinking rather than
  choice of when to think.

The third is the analogue of `plasticity-routing`'s `ACTION_MATCHED_RANDOM`,
which is what let its result attribute an effect to *content* rather than to
*budget*. Without it, "deliberation helps" is indistinguishable from "spending
more helps".

## 6. Leakage — `TO BE SPECIFIED`

The specific hazard in this domain: **a policy deciding when to answer must not
see the answer, nor any function of it.** A confidence signal computed from the
target is the same leak wearing a different name.

Required: a whitelist of decision-time-legal features, and a canary that verifies
the detector catches a deliberately planted oracle.

## 7. Seeds, reveal order, negative results

Programme convention, inherited without modification:

- development and confirmatory seeds disjoint, derived deterministically from a
  declared label so they cannot be reshaped to fit a result;
- all gates evaluated and passed **before** any comparative metric is computed,
  printed or aggregated;
- one-shot confirmatory execution; aborted attempts retained, not hidden;
- negative results published, including this track's own design failures.

## 8. Predeclared ledger consequence — `TO BE DETERMINED WITH THE UMBRELLA`

Before freezing, this preregistration must state what a successful run does and
does not license at CCS level, in the manner of
[`plasticity-routing/EXP-003`](https://github.com/in-c0/plasticity-routing/blob/design/exp003-allocation-commitment-factorial/experiments/EXP-003-PREREG-DRAFT.md)
§12.

Specifically it must state whether the result bears on **CCS-C12** (that one
mechanism governs both commitment domains) and, if so, exactly how — since a
COMMIT_EXTERNAL result on its own cannot establish a claim about unification,
which needs both domains instrumented together.
