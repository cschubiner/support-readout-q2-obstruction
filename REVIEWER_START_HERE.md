# Reviewer Start Here

This repository is a public verification mirror for a frozen mathematical
physics package:

`Support, Readout, and the Binary-Rank Obstruction`

The review standard is deliberately adversarial. A useful response classifies
the main claim as one of:

- already standard under a known theorem name;
- false, with a counterexample or missing hypothesis;
- proof-polish needed;
- package/hash/build issue;
- new but checkable finite-central classification.

Public review thread:
https://github.com/cschubiner/support-readout-q2-obstruction/issues/1

## What To Inspect First

1. Read `docs/support_readout_q2_external_review_request.md`.
2. Read `docs/support_readout_q2_obstruction_manuscript.pdf`.
3. Check the novelty boundary in
   `docs/support_readout_q2_novelty_adjudication.md`.
4. Check the primary-source attack map in
   `docs/support_readout_q2_literature_boundary_index.md`.
5. Verify the finite Lean kernel if desired:

```bash
shasum -a 256 -c docs/support_readout_q2_public_mirror_SHA256SUMS.txt
cd docs/support_readout_q2_lean_verification
lake build SupportReadoutQ2
lean SupportReadoutQ2.lean
```

The Lean file checks only the finite same-data/no-reconstruction kernel, the
blind `q=2` versus `q=3` witness, the finite accountability-rank condition, and
the conditional least-event-size implication. It is not a formalization of
AQFT, DHR/DR theory, locally covariant QFT, JLMS/OAQEC, crossed products, or
black-hole spectroscopy.

## Main Questions

1. Is the obstruction already standard under another theorem name?
2. Does a standard full-theory AQFT/locality/reconstruction hypothesis already
   exclude the finite central completions, and is that hypothesis actually
   present in the stated inputs?
3. Is support/readout accountability plus a finite-alphabet law or direct
   `q=2` measurement the right positive route to binary rank?
4. Does the Lean finite kernel faithfully abstract the standard-language claim?

## Response Format

Use `REVIEW_RESPONSE_TEMPLATE.md` if convenient. The most useful response is
short, source-specific, and decisive enough to drive one of these actions:

- demote the novelty claim and cite the standard theorem;
- record a counterexample or missing hypothesis;
- patch proof or package presentation narrowly;
- preserve the frozen package as a new-but-checkable classification.

Silence, informal interest, or encouragement is not adjudication.

Public responses can be left on:
https://github.com/cschubiner/support-readout-q2-obstruction/issues/1
