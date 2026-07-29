import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure SemigroupClosurePackage (A : Set ℕ) where
  semigroup : Set ℕ
  generators : A
  closureProperty : Prop
  containsAllLarge : Prop
  asymptoticDensity : ℚ

structure SemigroupClosureEvidence (A : Set ℕ) (P : SemigroupClosurePackage A) where
  closurePropertyClosed : P.closureProperty
  containsAllLargeClosed : P.containsAllLarge

def SemigroupClosureClosed (A : Set ℕ) (P : SemigroupClosurePackage A) : Prop :=
  P.closureProperty ∧ P.containsAllLarge

theorem semigroup_closure_closed_from_evidence (A : Set ℕ) (P : SemigroupClosurePackage A)
    (E : SemigroupClosureEvidence A P) : SemigroupClosureClosed A P := by
  exact And.intro E.closurePropertyClosed E.containsAllLargeClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse