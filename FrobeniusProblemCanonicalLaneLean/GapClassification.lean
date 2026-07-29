import FrobeniusProblemCanonicalLaneLean.SemigroupPackage

/-!
# Gap Classification Package
-/

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure GapClassificationPackage (S : SemigroupPackage) where
  coinSet : List ℕ
  gapSet : List ℕ
  gapStructure : Prop
  symmetric : Prop
  delta : ℕ

structure GapClassificationEvidence (S : SemigroupPackage) (G : GapClassificationPackage S) where
  gapStructureClosed : G.gapStructure
  symmetricClosed : G.symmetric

def GapClassificationClosed (S : SemigroupPackage) (G : GapClassificationPackage S) : Prop :=
  G.gapStructure ∧ G.symmetric

theorem gap_classification_closed_from_evidence
    (S : SemigroupPackage) (G : GapClassificationPackage S)
    (E : GapClassificationEvidence S G) : GapClassificationClosed S G := by
  exact And.intro E.gapStructureClosed E.symmetricClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse