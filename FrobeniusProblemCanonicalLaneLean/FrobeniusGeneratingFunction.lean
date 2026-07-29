import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure FrobeniusGeneratingFunction (A : Type u) [AddCommMonoid A] where
  numerator : A → ℕ
  denominator : A → ℕ
  rationalFunction : Prop
  poleOrder : ℕ
  generatingRelation : Prop

structure FrobeniusGeneratingFunctionEvidence (A : Type u) [AddCommMonoid A] (F : FrobeniusGeneratingFunction A) where
  rationalFunctionClosed : F.rationalFunction
  generatingRelationClosed : F.generatingRelation

def FrobeniusGeneratingFunctionClosed (A : Type u) [AddCommMonoid A] (F : FrobeniusGeneratingFunction A) : Prop :=
  F.rationalFunction ∧ F.generatingRelation

theorem frobenius_generating_function_closed_from_evidence
    (A : Type u) [AddCommMonoid A] (F : FrobeniusGeneratingFunction A)
    (E : FrobeniusGeneratingFunctionEvidence A F) : FrobeniusGeneratingFunctionClosed A F := by
  exact And.intro E.rationalFunctionClosed E.generatingRelationClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse