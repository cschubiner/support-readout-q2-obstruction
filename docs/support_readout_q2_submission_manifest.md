# Support/Readout Q=2 Obstruction Submission Manifest

## Status

Status: **submission-freeze package, pending human authorship/submission/review actions**.

This package freezes the local Paper 2 deliverables in the same style as the
finite-center paper: scope page, 15-page PDF, arXiv source bundle, buildable
Lean archive, external-review request, novelty memo, and artifact hashes.
Human actions still pending after this freeze:

- authorship/metadata decision;
- arXiv upload decision;
- sending the external-review request to operator-algebra/AQFT experts;
- written-response-driven edits, if external feedback requires unfreezing.

Paper 1 remains frozen and is not modified by this package.

## Candidate arXiv Metadata

- Title: `Support, Readout, and the Binary-Rank Obstruction`
- Primary category: `math-ph`
- Suggested cross-lists: `gr-qc`, `quant-ph`, `hep-th`
- MSC 2020 candidate: `81T05`, `46L10`, `46L55`; secondary `81P45`,
  `83C57`
- Author metadata: supplied by the uploader at submission time. The TeX keeps
  `\author{}` blank to avoid inventing authorship in the repository copy.

## Frozen Files

- Scope page: `docs/support_readout_q2_obstruction_scope.md`
- TeX source: `docs/support_readout_q2_obstruction_manuscript.tex`
- Compiled PDF: `docs/support_readout_q2_obstruction_manuscript.pdf`
- arXiv source bundle:
  `docs/support_readout_q2_obstruction_arxiv_source.tar.gz`
- Lean verification archive:
  `docs/support_readout_q2_lean_verification_archive.tar.gz`
- External-review request:
  `docs/support_readout_q2_external_review_request.md`
- Novelty adjudication memo:
  `docs/support_readout_q2_novelty_adjudication.md`
- Lean core:
  `docs/support_readout_q2_lean_verification/SupportReadoutQ2.lean`
- Base commit inspected while preparing this package:
  `65f7c1cb32c6e5f11ff6ca518e2e611ff3d579a4`

The TeX uses an inline `thebibliography`; no external `.bib` file is required.

## Frozen Artifact Hashes

- Scope page SHA-256:
  `1d2cb9f727dd5ef84dfaaf3d751fda8306db85a58311b5edb0121c09614db4de`
- TeX source SHA-256:
  `b4d628bd5e88b8a965a4be504c9a9d6ba802ecedbb2cde325198275264c146ac`
- Compiled PDF SHA-256:
  `5f6a6ffbfbb9f29cfcf1c3746e5bf6f09b63ef784ee39c6497f44d8d101c4685`
- arXiv source bundle SHA-256:
  `69ee1a86e6c3984bcce3fd619d6a3003b880412e30a9cebf2eff18bfb26ad61f`
- Standalone Lean archive SHA-256:
  `3c935549be6c906e9be77ed78c02a4bfe0c763ba3f69fd739eeb64b114c66acc`
- External-review request SHA-256:
  `b2f12fae60f2c7a9d89b7270a3f8c39ef0d5bcee1c3b4fabc29ed5d1b5c5215e`
- Novelty adjudication memo SHA-256:
  `77cb3f2210f53e4cf872a20d46cfde794d14585617ec9d6a25f94b5146294a10`
- Lean core SHA-256:
  `cb67a3bc4ff838a4b54a85b584d85c713788cf829cedadf4a8e711d9219354d9`
- Lean README SHA-256:
  `a0471dbc29a8fce911d418ada753cf9eea77d72da710a3a37f2405ba1702a8f8`

## Frozen Theorem Surface

- Theorem environments: `1`
- Definition environments: `0`
- Remark environments: `0`
- Lemma environments: `0`
- Corollary environments: `0`
- Compiled page count: `15`

The note intentionally keeps a single theorem surface:
quotient-visible operational data do not determine full ambient support,
kernel status, finite central rank, or `q=2`; support/readout accountability is
the finite rank condition `rank R_q = dim(V_q/N_q)`; and binary rank still
requires a separate finite-alphabet law or direct `q=2` data.

## arXiv Source Bundle

- Bundle contents:
  - `support_readout_q2_obstruction_manuscript.tex`
- Bundle SHA-256:
  `69ee1a86e6c3984bcce3fd619d6a3003b880412e30a9cebf2eff18bfb26ad61f`
- Creation command:

```bash
COPYFILE_DISABLE=1 tar -czf docs/support_readout_q2_obstruction_arxiv_source.tar.gz \
  -C docs support_readout_q2_obstruction_manuscript.tex
```

## Standalone Lean Verification Archive

- Archive contents:
  - `support_readout_q2_lean_verification/lean-toolchain`
  - `support_readout_q2_lean_verification/lakefile.lean`
  - `support_readout_q2_lean_verification/lake-manifest.json`
  - `support_readout_q2_lean_verification/SupportReadoutQ2.lean`
  - `support_readout_q2_lean_verification/README.md`
- Archive SHA-256:
  `3c935549be6c906e9be77ed78c02a4bfe0c763ba3f69fd739eeb64b114c66acc`
- Clean-room verification command:

```bash
rm -rf /tmp/support-readout-q2-lean-check
mkdir -p /tmp/support-readout-q2-lean-check
tar -xzf docs/support_readout_q2_lean_verification_archive.tar.gz \
  -C /tmp/support-readout-q2-lean-check
cd /tmp/support-readout-q2-lean-check/support_readout_q2_lean_verification
lake build SupportReadoutQ2
lean SupportReadoutQ2.lean
```

The Lean archive imports only Lean `Std`, pins `leanprover/lean4:v4.30.0`, and
checks only the finite same-data/no-reconstruction kernel, the blind `q=2`
versus `q=3` witness, the finite accountability-rank condition, and the
conditional least-event-size implication. It does not formalize AQFT, DHR/DR,
locally covariant QFT, JLMS/OAQEC, crossed products, or black-hole
spectroscopy.

## Build and Verification Commands

```bash
tectonic docs/support_readout_q2_obstruction_manuscript.tex
pdfinfo docs/support_readout_q2_obstruction_manuscript.pdf
tar -tzf docs/support_readout_q2_obstruction_arxiv_source.tar.gz
tar -tzf docs/support_readout_q2_lean_verification_archive.tar.gz
cd docs/support_readout_q2_lean_verification
lake build SupportReadoutQ2
lean SupportReadoutQ2.lean
```

Expected PDF page count: `15`.

## Exact Frozen Novelty Claim

The note does not claim new Tomita-Takesaki theory, new locally covariant QFT,
new DHR/Doplicher-Roberts reconstruction, new JLMS/OAQEC, new crossed-product
entropy, or a new derivation of Bekenstein-Hawking entropy.

The claimed contribution is the converse finite-support/binary-rank
classification: when supplied operational, modular, sector, recovery,
continuum, entropy, and quotient-visible locally covariant/relative-Cauchy data
factor through a represented quotient, they cannot force full ambient support,
kernel status, finite central rank, or `q=2`. A positive binary theorem needs
both support/readout accountability and a rank-breaking finite-alphabet law or
direct `q=2` measurement channel. Full-theory dynamical locality, source
faithfulness, or indecomposability are treated as possible positive exits, not
as consequences of quotient-visible records.

## Review Boundary

The review request
`docs/support_readout_q2_external_review_request.md` asks an outside expert to
attack exactly three points:

1. whether the obstruction is already standard under another theorem name;
2. whether standard full-theory AQFT/locality/reconstruction hypotheses already
   exclude the finite central completions, and whether those hypotheses are
   genuinely present in the note's input data or are additional positive
   assumptions;
3. whether the two-step positive criterion is too strong or missing a weaker
   known route to `q=2`.
