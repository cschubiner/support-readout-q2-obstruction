import Std

/-!
# Support/readout binary-rank obstruction core

This standalone Lean file is the first minimal verification core for Paper 2.
It deliberately checks only the finite logical kernel: if operational data are
constant on two admitted finite completions but the target rank, or the
predicate "rank is two", differs, then no reconstruction rule from those data
can recover the target.

It also records the finite positive criterion used in the scope page: once the
available finite event sizes are the nontrivial quotients `2 <= k <= q`, the
least nontrivial size is two.  This does not prove that the least-size rule is
physical.  It only checks that, if that rule is supplied, the selected finite
alphabet is binary.
-/

namespace SupportReadoutQ2

def Reconstructs {Alpha Beta Gamma : Type} (obs : Alpha -> Beta)
    (target : Alpha -> Gamma) (rec : Beta -> Gamma) : Prop :=
  forall x, rec (obs x) = target x

theorem noReconstructionOfDistinguishedPair {Alpha Beta Gamma : Type}
    (obs : Alpha -> Beta) (target : Alpha -> Gamma) (x y : Alpha)
    (hobs : obs x = obs y) (htarget : Not (target x = target y)) :
    Not (exists rec : Beta -> Gamma, Reconstructs obs target rec) := by
  intro h
  rcases h with ⟨rec, hrec⟩
  have hx := hrec x
  have hy := hrec y
  have sameTarget : target x = target y := by
    calc
      target x = rec (obs x) := hx.symm
      _ = rec (obs y) := by rw [hobs]
      _ = target y := hy
  exact htarget sameTarget

def PropReconstructs {Alpha Beta : Type} (obs : Alpha -> Beta)
    (target : Alpha -> Prop) (rec : Beta -> Prop) : Prop :=
  forall x, rec (obs x) <-> target x

theorem noPropertyReconstructionOfDistinguishedPair {Alpha Beta : Type}
    (obs : Alpha -> Beta) (target : Alpha -> Prop) (x y : Alpha)
    (hobs : obs x = obs y) (htrue : target x) (hfalse : Not (target y)) :
    Not (exists rec : Beta -> Prop, PropReconstructs obs target rec) := by
  intro h
  rcases h with ⟨rec, hrec⟩
  have hx : rec (obs x) := (hrec x).2 htrue
  have hy : rec (obs y) := by
    rw [← hobs]
    exact hx
  exact hfalse ((hrec y).1 hy)

structure FiniteCompletion where
  q : Nat
  q_ge_two : 2 <= q

def blindDatum (_candidate : FiniteCompletion) : Unit := ()

def centralRank (candidate : FiniteCompletion) : Nat := candidate.q

def isBinaryRank (candidate : FiniteCompletion) : Prop := candidate.q = 2

def qTwo : FiniteCompletion := ⟨2, by decide⟩

def qThree : FiniteCompletion := ⟨3, by decide⟩

theorem blindDataSameForTwoAndThree : blindDatum qTwo = blindDatum qThree := rfl

theorem ranksDifferForTwoAndThree : centralRank qTwo ≠ centralRank qThree := by
  decide

theorem blindDataDoNotReconstructRank :
    Not (exists rec : Unit -> Nat, Reconstructs blindDatum centralRank rec) := by
  exact noReconstructionOfDistinguishedPair blindDatum centralRank qTwo qThree
    blindDataSameForTwoAndThree ranksDifferForTwoAndThree

theorem qTwoIsBinary : isBinaryRank qTwo := rfl

theorem qThreeIsNotBinary : Not (isBinaryRank qThree) := by
  simp [isBinaryRank, qThree]

theorem blindDataDoNotDecideBinary :
    Not (exists rec : Unit -> Prop, PropReconstructs blindDatum isBinaryRank rec) := by
  exact noPropertyReconstructionOfDistinguishedPair blindDatum isBinaryRank
    qTwo qThree blindDataSameForTwoAndThree qTwoIsBinary qThreeIsNotBinary

def CenteredDimension (q : Nat) : Nat := q - 1

structure AccountabilityRanks where
  q : Nat
  nullRank : Nat
  readoutRank : Nat

def accountablyTotal (ranks : AccountabilityRanks) : Prop :=
  ranks.nullRank + ranks.readoutRank = CenteredDimension ranks.q

theorem missingRankPreventsAccountability (ranks : AccountabilityRanks)
    (hmissing : ranks.nullRank + ranks.readoutRank < CenteredDimension ranks.q) :
    Not (accountablyTotal ranks) := by
  intro htotal
  rw [accountablyTotal] at htotal
  rw [htotal] at hmissing
  exact Nat.lt_irrefl (CenteredDimension ranks.q) hmissing

def NontrivialEventSize (q k : Nat) : Prop := 2 <= k /\ k <= q

def leastNontrivialEventSize (_q : Nat) : Nat := 2

theorem leastNontrivialEventSizeIsBinary {q : Nat} (hq : 2 <= q) :
    NontrivialEventSize q (leastNontrivialEventSize q) /\
      forall k, NontrivialEventSize q k -> leastNontrivialEventSize q <= k := by
  constructor
  · constructor
    · simp [leastNontrivialEventSize]
    · simpa [leastNontrivialEventSize] using hq
  · intro k hk
    simpa [leastNontrivialEventSize] using hk.left

end SupportReadoutQ2
