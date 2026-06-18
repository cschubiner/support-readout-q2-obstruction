# Literature Boundary Index: Support/Readout Q=2 Obstruction

Status: non-frozen reviewer-facing literature map. This file does not change
the frozen Paper 2 theorem, manuscript, Lean core, archives, hashes, novelty
memo, manifest, or external-review request.

## Purpose

Give an outside referee a compact map of the exact prior-art boundaries that
can kill, demote, or preserve the support/readout obstruction claim. This is
not a priority claim. It records where the package should be attacked first.

## Current Claim To Test

The package claims only this negative/conditional statement:

- quotient-visible operational, modular, locally covariant, sector, recovery,
  entropy, and continuum data do not determine full ambient support, kernel
  status, finite central rank, or the predicate `q=2`;
- support/readout accountability is the missing finite central rank condition;
- even after support/readout accountability, a separate finite-alphabet law or
  direct derived `q=2` measurement channel is needed to force binary rank.

If an existing theorem already states this exact support/readout criterion and
binary-rank obstruction, the novelty claim should be demoted before the theorem
surface is changed.

## Referee Attack Matrix

| Boundary | Primary source checked | What would kill or demote the package | Current read of the boundary |
| --- | --- | --- | --- |
| Locally covariant QFT and relative Cauchy evolution | Brunetti, Fredenhagen, Verch, "The generally covariant locality principle", arXiv:math-ph/0112041, CMP 237 (2003), 31-68, DOI 10.1007/s00220-003-0815-7 | A BFV theorem showing that quotient-visible relative Cauchy evolution or functorial records determine any larger finite central completion not present in the supplied functor. | BFV supplies the functorial theory and relative Cauchy evolution data. The Paper 2 obstruction asks a different question: whether data already factored through a represented quotient classify an omitted finite center. |
| Dynamical locality and SPASs | Fewster and Verch, "Dynamical Locality and Covariance", arXiv:1106.4785, Ann. Henri Poincare 13 (2012), 1613-1674, DOI 10.1007/s00023-012-0165-0 | A standard dynamical-locality/source-faithfulness/indecomposability premise already present in the Paper 2 input data and already excluding the hidden finite central completions. | Dynamical locality is the most plausible positive AQFT exit. It should be treated as an additional full-theory premise unless a reviewer shows that the manuscript's stated inputs already include it. |
| Local measurement schemes | Fewster and Verch, "Quantum fields and local measurements", CMP 378 (2020), 851-889, DOI 10.1007/s00220-020-03800-6 | A measurement-scheme theorem showing that the supplied bounded-region probe/readout data necessarily separate every finite central direction in the comparison class. | Local probes/readouts are exactly the missing accountability surface. They support the need to state the measurement channel, not a conclusion that an unmeasured finite center was already read out. |
| DHR/DR reconstruction | Doplicher and Roberts, "Why there is a field algebra with a compact gauge group describing the superselection structure in particle physics", CMP 131 (1990), 51-107, DOI 10.1007/BF02097680 | A DR reconstruction result showing that central-character fibers omitted from the supplied superselection structure are nevertheless reconstructed. | DR reconstruction is relative to the supplied superselection structure. Paper 2 must not claim a new DR theorem; it asks whether forgotten finite central fibers can be recovered from data that never contained them. |
| JLMS and entanglement-wedge/OAQEC reconstruction | Jafferis, Lewkowycz, Maldacena, Suh, arXiv:1512.06431, JHEP 06 (2016) 004; Dong, Harlow, Wall, arXiv:1601.05416, PRL 117 (2016) 021601; Harlow, arXiv:1607.03901, CMP 354 (2017) | A reconstruction or relative-entropy theorem proving that the supplied logical algebra is maximal against hidden finite central extensions. | These sources reconstruct or compare the algebra/code region actually supplied. They do not by themselves certify maximality of that algebra against an omitted finite central completion. |
| Statistical comparison and sufficiency | Blackwell, "Equivalent Comparisons of Experiments", Ann. Math. Stat. 24 (1953), 265-272; Petz, "Sufficient subalgebras and the relative entropy of states of a von Neumann algebra", CMP 105 (1986), 123-131; Buscemi, arXiv:1004.3794, CMP 310 (2012), 625-647 | A Blackwell/Petz/Buscemi-style theorem already stating the finite support/readout accountability rank condition and its binary-rank consequence. | Sufficiency theory is the closest demotion risk for the support/readout criterion. It explains why quotient-complete experiments need not decide targets not constant on quotient fibers. It has not yet been identified as the exact binary-rank obstruction. |
| Generalized entropy and Type II crossed-product programs | Chandrasekaran, Longo, Penington, Witten, arXiv:2206.10780; related crossed-product/generalized-entropy constructions | A supplied-algebra entropy theorem selecting the finite central rank or the predicate `q=2` without an additional support/readout or measurement premise. | These programs are positive algebraic entropy frameworks for supplied algebras. Paper 2 must not market itself as a new entropy theorem or a derivation of black-hole entropy. |
| Black-hole line spectroscopy and finite alphabets | Bekenstein and Mukhanov, "Spectroscopy of the quantum black hole", arXiv:gr-qc/9505012, Phys. Lett. B 360 (1995), 7-12, DOI 10.1016/0370-2693(95)01148-J | A direct spectroscopy or finite-alphabet theorem deriving `q=2` from the stated quotient-visible data. | Spectroscopy is a positive measurement route to an observed finite alphabet. It is not an entropy-only proof that quotient-visible data forced binary rank before the measurement channel was supplied. |

## Most Dangerous Demotions

1. **Known sufficiency theorem.** A reviewer may identify a finite
   Blackwell/Petz/Buscemi theorem that is exactly the support/readout
   accountability criterion. If so, demote the novelty claim and cite that
   theorem.
2. **Hidden AQFT premise already included.** A reviewer may show that the
   manuscript's stated locally covariant inputs already include a full-theory
   premise strong enough to exclude the hidden finite center. If so, the
   obstruction is overbroad and the manuscript must state the extra premise
   boundary.
3. **Lean abstraction mismatch.** A reviewer may accept the finite kernel but
   reject it as a faithful abstraction of the standard-language AQFT/OAQEC
   claim. If so, patch the Lean-boundary prose before touching theorem text.

## What Would Preserve The Claim

The package survives as a narrow referee-grade contribution only if outside
review confirms all three points:

- no standard theorem already states the same support/readout accountability
  plus binary-rank obstruction;
- no full-theory AQFT/OAQEC/statistical premise already present in the inputs
  rules out the finite central completions;
- the Lean finite kernel faithfully captures the same-data/no-reconstruction
  core and the accountability-rank condition.

Even then, the correct claim remains negative and conditional. It is not a
binary-rank theorem, not a black-hole entropy derivation, and not a new
reconstruction theorem for any of the cited frameworks.

## Immediate Reviewer Questions

1. What theorem name and citation should replace the novelty claim if this is
   already standard?
2. Which premise, if any, already present in the manuscript rules out the
   hidden finite central summand?
3. Is support/readout accountability exactly a known sufficiency condition, or
   is the rank form here a useful finite-central specialization?
4. Can any weaker standard hypothesis force `q=2` after support/readout
   accountability, without a finite-alphabet law or direct `q=2` measurement?
