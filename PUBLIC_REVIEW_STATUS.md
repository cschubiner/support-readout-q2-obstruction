# Public Review Status

This page records the public verification and review state of the frozen
support/readout `q=2` obstruction package.

## Frozen Package

- Frozen release:
  https://github.com/cschubiner/support-readout-q2-obstruction/releases/tag/v0.1.0
- Frozen release commit:
  `9e28ccc8f94e0bcb389a57e3a5253ed49fbe5646`
- Public metadata commit with first successful CI run:
  `113c64dba4f1bcd63a361ed4459b0d7fcd2434dd`

The frozen release is the package to cite or attack for theorem, manuscript,
Lean, archive, and hash content. Later `main` commits are public review
metadata only.

## Public Verification

- Public workflow:
  https://github.com/cschubiner/support-readout-q2-obstruction/actions/workflows/verify-frozen-package.yml
- First successful run:
  https://github.com/cschubiner/support-readout-q2-obstruction/actions/runs/27771822230
- Checked commit:
  `113c64dba4f1bcd63a361ed4459b0d7fcd2434dd`

The workflow verifies the frozen hash manifest and the Lean core on
GitHub-hosted infrastructure. This is reproducibility evidence, not novelty
adjudication.

## Public Review Thread

- Public issue:
  https://github.com/cschubiner/support-readout-q2-obstruction/issues/1
- Current known public response state at this status update: no public comments.

The issue is the preferred public place to report one of:

- known-result demotion, with theorem name and citation;
- false or overbroad statement, with counterexample or missing premise;
- missing AQFT/OAQEC/sufficiency hypothesis;
- Lean abstraction mismatch;
- package, hash, build, or mirror issue;
- new but checkable finite-central classification.

## What Counts As Adjudication

Real adjudication requires a written external response that classifies the claim
boundary. Public CI success, local checks, issue creation, silence, or informal
interest do not adjudicate the claim.

If a reviewer identifies an exact standard theorem for the same
support/readout accountability plus binary-rank obstruction, the novelty claim
should be demoted before any theorem surface is changed.
