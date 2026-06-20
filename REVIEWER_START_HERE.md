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

Public verification workflow:
https://github.com/cschubiner/support-readout-q2-obstruction/actions/workflows/verify-frozen-package.yml

Public review and verification status:
`PUBLIC_REVIEW_STATUS.md`

Structured public review issue template:
`.github/ISSUE_TEMPLATE/external-review-classification.md`

## What To Inspect First

1. Read `PUBLIC_REVIEW_STATUS.md`.
2. Read `docs/team1_minimal_expert_classification_request.md` for the fastest
   one-page verdict request.
3. Read `docs/team1_oaqec_jlms_maximality_question.md` for the
   highest-priority one-page OAQEC/JLMS missing-hypothesis test.
4. Read `docs/team1_dhr_dr_sector_faithfulness_question.md` for the one-page
   DHR/DR sector-faithfulness classification request.
5. Read `docs/team1_two_week_theorem_or_demotion_sprint.md` for the current
   theorem-or-demotion work queue.
6. Read `docs/team1_external_review_dispatch_dossier.md` for the compact
   row-by-row attack packet.
7. Read `docs/support_readout_q2_external_review_request.md`.
8. Read `docs/support_readout_q2_obstruction_manuscript.pdf`.
9. Check the novelty boundary in
   `docs/support_readout_q2_novelty_adjudication.md`.
10. Check the primary-source attack map in
   `docs/support_readout_q2_literature_boundary_index.md`.
11. For a quick standard-theorem demotion pass, read
   `docs/team1_standard_theorem_crosswalk.md` and
   `docs/team1_referee_claim_boundary_matrix.md`.
12. For the shortest theorem target, read
   `docs/team1_finite_center_residue_theorem_note.md`.
13. For the positive accountability criterion, read
   `docs/team1_positive_accountability_short_note.pdf`, then
   `docs/team1_positive_accountability_theorem_note.md` if a proof-note view
   is useful.
14. For the current internal novelty verdict, read
   `docs/team1_self_adjudication_decision_memo.md`.
15. For how responses will be classified into source actions, read
   `docs/team1_external_review_response_triage.md`.
16. Verify the finite Lean kernel if desired:

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
5. Is the surviving residue in `docs/team1_standard_theorem_crosswalk.md`
   already a named theorem or only an elementary corollary package?
6. Is the residue lemma in
   `docs/team1_finite_center_residue_theorem_note.md` standard, false, too
   broad, or publishable as a finite-center corollary?
7. Is the positive criterion in
   `docs/team1_positive_accountability_short_note.pdf` just finite
   Blackwell/Petz sufficiency under another name, or a useful AQFT/black-hole
   reconstruction boundary?
8. Is the self-adjudication memo too harsh, too generous, or correctly framed?
9. Does `docs/team1_external_review_response_triage.md` map your response to
   the right minimum action?

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

New public review issues can use the external review classification template.
