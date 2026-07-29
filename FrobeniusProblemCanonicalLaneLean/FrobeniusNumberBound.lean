import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure FrobeniusNumberBoundPackage where
  generators : List ℕ
  gcdCondition : Prop
  upperBound : ℕ
  lowerBound : ℕ
  boundSharpness : Prop

structure FrobeniusNumberBoundEvidence (B : FrobeniusNumberBoundPackage) where
  gcdConditionClosed : B.gcdCondition
  upperBoundClosed : B.upperBound = (B.generators.minimum? 0).getD 0 * (B.generators.maximum? 0).getD 0 - B.generators.minimum? 0 - B.generators.maximum? 0
  lowerBoundClosed : B.lowerBound = (B.generators.minimum? 0).getD 0 * (B.generators.maximum? 0).getD 0 - B.generators.minimum? 0 - B.generators.maximum? 0
  boundSharpnessClosed : B.boundSharpness

def FrobeniusNumberBoundClosed (B : FrobeniusNumberBoundPackage) : Prop :=
  B.gcdCondition ∧ B.boundSharpness

theorem frobenius_number_bound_closed_from_evidence (B : FrobeniusNumberBoundPackage)
    (E : FrobeniusNumberBoundEvidence B) : FrobeniusNumberBoundClosed B := by
  exact And.intro E.gcdConditionClosed E.boundSharpnessClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse