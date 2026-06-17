# Release Notes v0.1.0

Initial public verification mirror for the frozen support/readout `q=2`
obstruction package.

## Included

- Frozen manuscript PDF and TeX source.
- arXiv-style source bundle.
- Standalone Lean verification archive.
- Unpacked Lean source for direct checking.
- Frozen submission manifest.
- External review request.
- Novelty adjudication memo.
- SHA-256 hash file for the mirrored package.
- Public README with hash, Lean, manuscript, and clean-room verification steps.

## Claim Boundary

The mirrored package is negative and conditional. It states that
quotient-visible data do not force full ambient support, kernel status, finite
central rank, or `q=2`; binary rank requires additional support/readout
accountability and a rank-breaking finite-alphabet law or direct `q=2`
measurement channel.

The package should not be described as a derivation of black-hole entropy or as
a new full-theory reconstruction theorem in AQFT, DHR/DR theory, OAQEC, or
locally covariant QFT.

## Verification

The release was prepared to support:

```bash
shasum -a 256 -c docs/support_readout_q2_public_mirror_SHA256SUMS.txt
cd docs/support_readout_q2_lean_verification
lake build SupportReadoutQ2
lean SupportReadoutQ2.lean
```

The source manifest gives the exact frozen hashes and the manuscript page-count
expectation.
