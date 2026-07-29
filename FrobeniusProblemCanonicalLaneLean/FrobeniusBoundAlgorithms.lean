import FrobeniusProblemCanonicalLaneLean.LinearDiophantineFrobenius

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure FrobeniusBoundAlgorithm (L : LinearDiophantineConditions) where
  upperBoundFormula : ℕ
  sharpnessWitness : ℕ
  boundDerived : Prop
  sharpnessDerived : Prop
  algorithmSound : Prop

structure FrobeniusBoundEvidence {L : LinearDiophantineConditions}
    (B : FrobeniusBoundAlgorithm L) where
  boundDerivedClosed : B.boundDerived
  sharpnessDerivedClosed : B.sharpnessDerived
  algorithmSoundClosed : B.algorithmSound

def FrobeniusBoundClosed {L : LinearDiophantineConditions}
    (B : FrobeniusBoundAlgorithm L) : Prop :=
  B.boundDerived ∧ B.sharpnessDerived ∧ B.algorithmSound

theorem frobenius_bound_closed_from_evidence {L : LinearDiophantineConditions}
    (B : FrobeniusBoundAlgorithm L) (E : FrobeniusBoundEvidence B) :
    FrobeniusBoundClosed B := by
  exact And.intro E.boundDerivedClosed (And.intro E.sharpnessDerivedClosed E.algorithmSoundClosed)

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse