# Adaptive Commitment

**Working research project:** when should an agent stop deliberating and commit
outward — `WAIT`, `THINK`, `ASK`, `RESPOND`, `ACT` — under streaming evidence?

> Status: **charter only.** No literature audit, no benchmark, no
> preregistration, no code, no result. **This repository holds no claim**, and
> the CCS umbrella deliberately records none against it.

## The domain: COMMIT_EXTERNAL

The CCS programme separates two commitment decisions that a single word used to
cover ([terminology](https://github.com/in-c0/consolidating-cognitive-substrate/blob/main/docs/TERMINOLOGY.md)):

| | decision | track |
|---|---|---|
| **COMMIT_INTERNAL** | whether information becomes durable in the substrate | `in-c0/state-promotion` |
| **COMMIT_EXTERNAL** | whether cognition is released outward as a response or action | **this repository** |

They are **not assumed to share a mechanism.** Whether one learned policy can
govern both is
[CCS-C12](https://github.com/in-c0/consolidating-cognitive-substrate/blob/main/docs/CLAIM-LEDGER.md),
a conjecture with four falsifiers and no implementation. This track is not
evidence for it, and must not be built as though the answer were known.

This track is **not** a refinement of `state-promotion`'s consolidation
threshold. The umbrella recorded it that way until 2026-09-03 and the record was
wrong; the correction is in
[that reconciliation](https://github.com/in-c0/consolidating-cognitive-substrate/blob/main/docs/reconciliation/2026-09-03.md).

## The question, not yet a hypothesis

> Under streaming evidence, when should an agent choose among `WAIT`, `THINK`,
> `ASK`, `RESPOND` and `ACT` — trading accuracy against latency, compute,
> intervention cost, uncertainty, and consequence/reversibility?

**That is a research question, not a falsifiable claim.** Turning it into one is
the first job here, and it must happen **before** any benchmark is designed —
otherwise the benchmark decides the hypothesis.

## The hard part is the objective, not the policy

Every other CCS track measures resources denominated in the machine: parameters,
writes, FLOPs, stored bytes, evidence reads. This track's two native costs are
not:

- **latency** — borne by whoever is waiting, not by the system;
- **intervention cost** — the price of asking an unnecessary question, or of an
  action that cannot be undone.

The umbrella's
[resource envelope](https://github.com/in-c0/consolidating-cognitive-substrate/blob/main/docs/RESOURCE-ENVELOPE.md)
records both as **`INCOMMENSURABLE`**: they exist, and they have no non-arbitrary
exchange rate with a parameter write. That is open problem **OP-1**, it currently
blocks the programme's integration experiment, and it is **this track's problem
to define**.

A trade-off objective that silently picks an exchange rate between a wrong answer
and a slow one has not solved this; it has hidden it. Whatever this track
chooses, it must be stated as a choice, with the result reported across a range
of rates rather than at one flattering point.

## Novelty boundary — provisional, pending the audit

The field is crowded. Not claimed as novel, pending confirmation by the literature
audit: anytime/interruptible algorithms; speed–accuracy tradeoffs and
drift-diffusion accounts of decision timing; the option to abstain, defer or
escalate to a human; active learning and the value of asking; early-exit and
adaptive-computation inference; bandits with a stopping decision; deferral under
uncertainty in agent systems.

**If the audit finds the question is already answered, that is the result**, and
this track should report it and close rather than build a benchmark to
rediscover it.

## Execution order — gated

1. **Literature audit.** What is already owned, and what survives.
2. **Falsifiable claim.** One sentence, with its falsifier, derived from the
   audit — *then* proposed to the CCS umbrella as a claim.
3. **Cost model.** Address OP-1 explicitly, or declare it unaddressed.
4. **Benchmark**, calibrated by a criterion naming no candidate policy.
5. **Preregistration**, committed before any runner exists.
6. **Development phase**, disjoint seeds.
7. **Confirmatory**, one shot.

**Nothing below step 2 may be built first.** A benchmark written before the claim
will encode the claim, and the audit will then be scored against a question the
benchmark already assumed.

## Dependencies

**Not blocked on `state-promotion`.** COMMIT_EXTERNAL was scoped as a separate
domain, so this track does not wait on the state pipeline reading out. It is
currently the only CCS track that could produce an admissible result without it.

No dependency on `plasticity-routing`, `modular-consolidation` or
`lifetime-integrity` in either direction. Their results are not evidence here and
this track's are not evidence there.

## Inherited admissibility rules

This track inherits the programme's
[admissibility rules](https://github.com/in-c0/consolidating-cognitive-substrate/blob/main/docs/EVIDENCE-MAP.md)
by default. A departure must be declared here and recorded at the next
reconciliation. The ones most likely to bite in this domain:

- **No held-out signal in a decision path.** A policy that decides when to
  respond may not consult the label it will be scored against.
- **Decision-time compute counted separately.** The cost of deciding whether to
  speak is part of the method, not overhead to be hidden. `state-promotion`'s
  pilot measured its gate at **72.4%** of total algorithmic compute; a deliberation
  policy can plausibly be worse.
- **Never weaken the primary comparator.** A fixed threshold rule, tuned on the
  same budget as the learned policy, is the comparator — not a courtesy baseline.
- **Preregistered criteria must be satisfiable** by some possible policy, checked
  before freezing.
- **Short-horizon results do not license long-horizon claims** — now confirmatory
  in `lifetime-integrity`, mean Spearman ρ 0.335 across horizons.
- **"Better than doing nothing" is not "it works."** A policy that responds
  slightly less badly than answering immediately has not demonstrated
  deliberation is useful.

## Local gates

No GitHub Actions, by programme convention. Gates run locally:

```bash
make check
```

## Licence

Apache-2.0.
