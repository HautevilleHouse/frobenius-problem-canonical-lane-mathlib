import FrobeniusProblemCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure LinearDiophantineConditions where
  generatorSet : List ℕ
  gcdKnown : Prop
  frobeniusNumberExistence : Prop
  closedCones : Prop

structure LinearDiophantineEvidence (L : LinearDiophantineConditions) where
  gcdKnownClosed : L.gcdKnown
  frobeniusNumberExistenceClosed : L.frobeniusNumberExistence
  closedConesClosed : L.closedCones

def LinearDiophantineClosed (L : LinearDiophantineConditions) : Prop :=
  L.gcdKnown ∧ L.frobeniusNumberExistence ∧ L.closedCones

theorem linear_diophantine_closed_from_evidence (L : LinearDiophantineConditions)
    (E : LinearDiophantineEvidence L) : LinearDiophantineClosed L := by
  exact And.intro E.gcdKnownClosed (And.intro E.frobeniusNumberExistenceClosed E.closedConesClosed)

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse