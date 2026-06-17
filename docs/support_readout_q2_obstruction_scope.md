# Paper 2 Scope: Support, Readout, And The Binary-Rank Obstruction

Status: scope page. This document is the prerequisite for the second note. It
fixes the intended theorem target, audience, prior-art boundary, and honest
novelty claim before any 15-25 page manuscript extraction begins.

## Main Theorem Candidate

Let \(A\) be the represented algebra reconstructed from an operational
experiment: normal states, effects, channels, modular data, locally covariant
net data, sector data, and entropy assignments. Let \(\widehat A_q\) be an
admitted microscopic completion obtained by adding a finite central register
\(\ell^\infty(\{1,\ldots,q\})\), and suppose the displayed experiment factors
through a normal quotient \(\pi_q:\widehat A_q\to A\). Then quotient-visible
data do not determine full ambient support, faithfulness of the representation
on \(\widehat A_q\), the physical/null/gauge/inadmissible status of
\(\ker\pi_q\), the central rank \(q\), or the predicate \(q=2\).

The intended Paper 2 theorem should sharpen this into a two-part
classification:

1. **Negative part.** Any premise package invariant under finite central
amplification, and using only data that factor through \(A\), cannot force a
binary finite primitive. The same represented modular flow, locally covariant
time-slice/RCE data, DHR/DR sector data for the supplied observable net,
JLMS/OAQEC reconstruction data, generalized-entropy value, and continuum
limit can coexist with \(q=2\) and with \(q>2\) off-support completions.

2. **Positive criterion.** To force \(q=2\), one must add or derive both:
   (S) support/readout accountability, meaning every non-null finite central
   direction is separated by physically available probes/readouts, or is proved
   null, gauge, or inadmissible; equivalently, for
   \(V_q=\ell^\infty_q/\mathbb C1\), the available readout rank equals
   \(\dim(V_q/N_q)\) after quotienting null directions; and
   (B) a binary-counting law, such as a physically derived statement that the
   elementary finite event alphabet is the least nontrivial closed quotient, or
   direct \(q=2\) spectroscopy whose measurement channel is itself derived.

The target conclusion is deliberately conditional: if (S) or (B) is absent,
nonbinary finite completions remain live. If (S) and (B) are supplied, binary
rank follows, but the burden has moved to proving those physical inputs rather
than hiding them in entropy, modular, or continuum notation.

## Target Audience

The note is for mathematical physicists working in operator algebras, AQFT,
locally covariant QFT, and quantum information. A reader should not need any
project-specific formalism. The proof language should be finite centers,
normal quotients, support projections, faithful representations, operational
separation, DHR/DR reconstruction, relative Cauchy evolution, operator-algebra
quantum error correction, and finite-alphabet entropy.

## Nearest Prior Art And Novelty Boundary

Brunetti-Fredenhagen-Verch (arXiv:math-ph/0112041) formulate locally covariant
QFT functorially and introduce relative Cauchy evolution for time-slice
theories; Fewster-Verch (arXiv:1106.4785) separate kinematical and dynamical
locality. These results constrain supplied locally covariant theories. Paper 2
must be phrased as a quotient-visible statement: full-theory dynamical locality,
source faithfulness, or indecomposability may be a positive exit, but the
represented quotient functor does not by itself classify an extra finite
central kernel invisible to that quotient.

Doplicher-Roberts (Commun. Math. Phys. 131, 51-107, 1990) reconstruct field
algebras and compact gauge groups from the superselection structure of a
supplied observable theory. Paper 2 must not claim a new DR reconstruction
theorem. Its point is narrower: sector data for the represented algebra do not
recreate central-character fibers omitted from the supplied category.

JLMS and operator-algebra quantum error correction identify when a supplied
logical algebra is reconstructable and when relative entropy agrees
(arXiv:1512.06431, arXiv:1607.03901, arXiv:1811.05482). Crossed-product and
generalized-entropy work gives algebraic entropy for particular Type II
algebras (for example arXiv:2206.10780 and arXiv:2209.10454). Paper 2 should
not claim that these frameworks are wrong; it should show that they calibrate
the algebra actually supplied and do not select the rank of an unseparated
finite central completion.

Bekenstein-Mukhanov black-hole spectroscopy (arXiv:gr-qc/9505012) is the
natural empirical boundary: a resolved finite-area line spacing \(\log q\),
with a derived measurement channel, would select the observed \(q\). A
\(\log2\) observation would validate binary; it would not, by itself, prove
that quotient-visible operational data forced binary before the measurement.

## Deliverable Shape

Start from the existing long notes only as source material. The manuscript
should be 15-25 pages, with one main no-go/classification theorem, one finite
countermodel family, one positive criterion, an assumption table, a minimal Lean
core formalizing the finite-center rank obstruction, and an external-review
request. The paper is successful if a referee can say either "this is a known
finite-support reconstruction obstruction" or "this is a checkable new
classification of the assumptions needed to force \(q=2\)."
