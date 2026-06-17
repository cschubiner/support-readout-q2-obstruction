# Support/Readout Q=2 Lean Verification Archive

This is the fresh minimal Lean 4 core for Paper 2. It imports only Lean's
`Std` library and intentionally avoids formalizing AQFT, DHR/DR theory, JLMS,
crossed products, or black-hole spectroscopy. Those are literature inputs for
the manuscript.

## Build

From this directory:

```bash
lake build SupportReadoutQ2
lean SupportReadoutQ2.lean
```

## Current Formalization Boundary

The file checks the finite logical kernel behind the Paper 2 scope page:

- same-data pairs with different finite rank cannot have a rank reconstruction
  function;
- same-data pairs with different truth values of "rank is two" cannot have a
  binary-rank decision rule;
- support/readout accountability requires null rank plus readout rank to cover
  the centered finite directions;
- if the least nontrivial event-size rule is supplied for a finite alphabet
  with `q >= 2`, it selects size `2`.

It does not prove that support/readout accountability or the least-event rule is
physically forced. That is exactly the Paper 2 mathematical question.
