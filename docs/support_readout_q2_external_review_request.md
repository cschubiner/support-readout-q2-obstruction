# External Review Request: Support, Readout, And Binary Rank

## Request

Please review the frozen local package
`docs/support_readout_q2_obstruction_manuscript.pdf` as a cold
mathematical-physics manuscript. The intended standard is modest but strict:
the main claim should be classifiable as a known finite-support reconstruction
obstruction, a new but checkable finite-central classification, or a false
statement with a clear counterexample.

## Main Claim To Attack

The note claims that quotient-visible operational data cannot force a binary
finite primitive. More precisely, if the displayed state/effect, modular,
locally covariant, DHR/DR sector, JLMS/OAQEC, continuum, and entropy data
factor through a normal quotient
`\pi_q:\widehat A_q -> A`, where
`\widehat A_q = A \oplus (N \bar\otimes \ell^\infty({1,...,q}))`, then the
same data are compatible with `q=2` and with `q>2` finite central completions.
The data therefore do not determine full ambient support, representation
faithfulness on the ambient algebra, kernel status, finite central rank, or the
predicate `q=2`.

The positive criterion claimed by the note is two-step:

- support/readout accountability: every non-null finite central direction is
  separated by physically available probes/readouts, or is proved null, gauge,
  or inadmissible; in finite rank,
  `rank R_q = dim(V_q/N_q)` for `V_q = ell^\infty_q / C1`;
- binary counting: after accountability, a separate finite-alphabet law or
  direct `q=2` spectroscopy with a derived measurement channel is still needed.

## Novelty Boundary

The note does not claim new Tomita-Takesaki theory, new locally covariant QFT,
new DHR/Doplicher-Roberts reconstruction, new JLMS/OAQEC, new crossed-product
entropy, or a new derivation of Bekenstein-Hawking entropy. Those are treated
as positive results about supplied algebras and supplied data.

The claimed contribution is the converse/fiber statement for the binary-rank
problem: when the supplied data are quotient-visible, exactly which extra
support, readout, quotient, physicality, or finite-alphabet premise is needed
before `q=2` can be forced?

## Three Questions

1. Is the main obstruction already a standard theorem in operator algebras,
   AQFT, superselection theory, OAQEC, or statistical sufficiency under another
   name? If so, what exact theorem should be cited and how should the claimed
   contribution be demoted?
2. Is the finite comparison class too broad for the intended physics? In
   particular, is there a standard full-theory locality, dynamical-locality,
   split, factor, source-faithfulness, indecomposability, or superselection
   assumption that already excludes the hidden finite central completions
   without adding a new premise? If yes, is that assumption already contained in
   the quoted data, or is it precisely the missing positive input?
3. Is the two-step positive criterion correct? Does support/readout
   accountability plus a binary finite-alphabet law really capture the missing
   route to `q=2`, or is there a weaker standard hypothesis that forces binary
   rank?

## Verification Artifact

The finite logical core is packaged in
`docs/support_readout_q2_lean_verification_archive.tar.gz`. It is not a
formalization of AQFT, DHR/DR theory, locally covariant QFT, JLMS/OAQEC,
crossed products, or black-hole spectroscopy. It checks only the finite
same-data/no-reconstruction kernel, the blind `q=2` versus `q=3` witness, the
finite accountability-rank condition, and the conditional least-event-size
implication.
