import FrobeniusProblemCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure SemigroupCarrierProperties where
  semigroupGenerated : Type u
  elementStructure : List ℕ
  saturationUpToBound : Prop
  asymptoticDensity : Prop

structure SemigroupCarrierEvidence (S : SemigroupCarrierProperties) where
  saturationUpToBoundClosed : S.saturationUpToBound
  asymptoticDensityClosed : S.asymptoticDensity

def SemigroupCarrierClosed (S : SemigroupCarrierProperties) : Prop :=
  S.saturationUpToBound ∧ S.asymptoticDensity

theorem semigroup_carrier_closed_from_evidence (S : SemigroupCarrierProperties)
    (E : SemigroupCarrierEvidence S) : SemigroupCarrierClosed S := by
  exact And.intro E.saturationUpToBoundClosed E.asymptoticDensityClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse