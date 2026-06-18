# Support, Readout, and the Binary-Rank Obstruction

[![Verify frozen package](https://github.com/cschubiner/support-readout-q2-obstruction/actions/workflows/verify-frozen-package.yml/badge.svg)](https://github.com/cschubiner/support-readout-q2-obstruction/actions/workflows/verify-frozen-package.yml)

This repository is an exact public verification mirror for the frozen
support/readout `q=2` obstruction package.

The package makes a narrow negative/conditional claim: quotient-visible
operational, modular, sector, recovery, continuum, entropy, and locally
covariant data do not determine full ambient support, kernel status, finite
central rank, or `q=2`. A positive binary conclusion still needs
support/readout accountability plus a rank-breaking finite-alphabet law or a
direct derived `q=2` measurement channel.

The repository is meant for outside verification and review. It does not claim
a new Tomita-Takesaki theorem, a new locally covariant QFT theorem, a new
DHR/Doplicher-Roberts reconstruction theorem, a new JLMS/OAQEC theorem, a
derivation of black-hole entropy, or a proof that binary rank is physically
forced.

External reviewers can start with `REVIEWER_START_HERE.md` and, if useful,
return `REVIEW_RESPONSE_TEMPLATE.md`. The non-frozen literature attack map is
`docs/support_readout_q2_literature_boundary_index.md`.

Public review thread:
https://github.com/cschubiner/support-readout-q2-obstruction/issues/1

## Contents

- `docs/support_readout_q2_obstruction_manuscript.pdf`: frozen manuscript.
- `docs/support_readout_q2_obstruction_manuscript.tex`: TeX source with inline
  bibliography.
- `docs/support_readout_q2_obstruction_arxiv_source.tar.gz`: arXiv-style source
  bundle.
- `docs/support_readout_q2_lean_verification_archive.tar.gz`: standalone Lean
  archive.
- `docs/support_readout_q2_lean_verification/`: unpacked Lean source.
- `docs/support_readout_q2_submission_manifest.md`: frozen manifest and claim
  boundary.
- `docs/support_readout_q2_external_review_request.md`: reviewer request.
- `docs/support_readout_q2_novelty_adjudication.md`: novelty and demotion
  boundary.
- `docs/support_readout_q2_literature_boundary_index.md`: referee-facing
  primary-source attack matrix for known-result demotion, hidden-premise
  objections, and claim preservation.
- `docs/support_readout_q2_public_mirror_SHA256SUMS.txt`: public mirror hashes.
- `.github/workflows/verify-frozen-package.yml`: public CI for frozen hashes
  and the Lean kernel.

## Verify Hashes

Run from the repository root:

```bash
shasum -a 256 -c docs/support_readout_q2_public_mirror_SHA256SUMS.txt
```

Every listed file should report `OK`.

## Verify Lean

Run from the repository root:

```bash
cd docs/support_readout_q2_lean_verification
lake build SupportReadoutQ2
lean SupportReadoutQ2.lean
```

For an archive-only clean-room check:

```bash
rm -rf /tmp/support-readout-q2-public-mirror-check
mkdir -p /tmp/support-readout-q2-public-mirror-check
tar -xzf docs/support_readout_q2_lean_verification_archive.tar.gz \
  -C /tmp/support-readout-q2-public-mirror-check
cd /tmp/support-readout-q2-public-mirror-check/support_readout_q2_lean_verification
lake build SupportReadoutQ2
lean SupportReadoutQ2.lean
```

The Lean core verifies only the finite same-data/no-reconstruction kernel, the
blind `q=2` versus `q=3` witness, the finite accountability-rank condition, and
the conditional least-event-size implication. It is not a formalization of AQFT,
DHR/DR theory, locally covariant QFT, JLMS/OAQEC, crossed products, or black-hole
spectroscopy.

## Verify Manuscript Build

Run from the repository root. Build in a scratch directory so the frozen
mirrored PDF is not rewritten before or after hash verification:

```bash
rm -rf /tmp/support-readout-q2-tex-check
mkdir -p /tmp/support-readout-q2-tex-check
cp docs/support_readout_q2_obstruction_manuscript.tex \
  /tmp/support-readout-q2-tex-check/
tectonic /tmp/support-readout-q2-tex-check/support_readout_q2_obstruction_manuscript.tex
pdfinfo /tmp/support-readout-q2-tex-check/support_readout_q2_obstruction_manuscript.pdf
pdfinfo docs/support_readout_q2_obstruction_manuscript.pdf
```

Expected page count: `15`.

For an arXiv-source clean-room check:

```bash
rm -rf /tmp/support-readout-q2-arxiv-check
mkdir -p /tmp/support-readout-q2-arxiv-check
tar -xzf docs/support_readout_q2_obstruction_arxiv_source.tar.gz \
  -C /tmp/support-readout-q2-arxiv-check
tectonic /tmp/support-readout-q2-arxiv-check/support_readout_q2_obstruction_manuscript.tex
```

## Review Questions

The requested review is intentionally direct:

1. Is the obstruction already standard under another theorem name?
2. Do standard full-theory physical axioms already present in the inputs exclude
   the finite central completions, or are they additional positive assumptions?
3. Is support/readout accountability plus a finite-alphabet law or direct
   `q=2` measurement too strong as the positive route to binary rank?

The literature-boundary index lists the primary sources to check first: BFV
locally covariant QFT, Fewster-Verch dynamical locality and local measurements,
Doplicher-Roberts reconstruction, JLMS/OAQEC, Blackwell/Petz/Buscemi
sufficiency, generalized-entropy/crossed-product programs, and
Bekenstein-Mukhanov spectroscopy.

If an exact standard theorem already states this support/readout criterion and
binary-rank obstruction, the novelty claim should be demoted before the theorem
surface is changed.

Public responses can be left on:
https://github.com/cschubiner/support-readout-q2-obstruction/issues/1
