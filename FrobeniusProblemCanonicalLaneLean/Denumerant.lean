import FrobeniusProblemCanonicalLaneLean.FrobeniusNumber

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure DenumerantPackage (F : FrobeniusNumberPackage) where
  numberN : ℕ
  representationCount : ℕ
  denumerantDefined : Prop
  denumerantDefinedTerm : denumerantDefined
  representationCountTerm : representationCount = (Finset.card (Finset.filter (λ (x : ℕ) => x = F.targetNumber) (Finset.image (λ (xs : List ℕ) => List.sum xs) (Finset.range (F.targetNumber / F.coinSet.minimum)).subsets)))

structure DenumerantEvidence (F : FrobeniusNumberPackage) (D : DenumerantPackage F) where
  denumerantDefinedClosed : D.denumerantDefined
  representationCountClosed : D.representationCountTerm

def DenumerantClosed (F : FrobeniusNumberPackage) (D : DenumerantPackage F) : Prop :=
  D.denumerantDefined ∧ D.representationCountTerm

theorem denumerant_closed_from_evidence (F : FrobeniusNumberPackage) (D : DenumerantPackage F) (E : DenumerantEvidence F D) :
    DenumerantClosed F D := by
  exact And.intro E.denumerantDefinedClosed E.representationCountClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse
