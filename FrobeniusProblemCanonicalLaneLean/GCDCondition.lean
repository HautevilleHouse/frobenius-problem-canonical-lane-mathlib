import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure GCDConditionPackage where
  generators : List ℕ
  gcd : ℕ
  gcdOneCondition : Prop
  allPairsCoPrime : Prop

structure GCDConditionEvidence (G : GCDConditionPackage) where
  gcdOneClosed : G.gcdOneCondition
  allPairsCoPrimeClosed : G.allPairsCoPrime

def GCDConditionClosed (G : GCDConditionPackage) : Prop :=
  G.gcdOneCondition ∧ G.allPairsCoPrime

theorem gcd_condition_closed_from_evidence (G : GCDConditionPackage)
    (E : GCDConditionEvidence G) : GCDConditionClosed G := by
  exact And.intro E.gcdOneClosed E.allPairsCoPrimeClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse