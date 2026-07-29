import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure FrobeniusBoundPackage {A : AdmissibleClass} where
  coinValues : List ℕ
  largestNonRepresentable : ℕ
  frobeniusNumber : ℕ
  boundFormula : Prop
  boundDerived : Bool

structure FrobeniusBoundEvidence {A : AdmissibleClass} (F : FrobeniusBoundPackage) where
  boundFormulaClosed : F.boundFormula
  boundDerivedClosed : F.boundDerived

def FrobeniusBoundClosed {A : AdmissibleClass} (F : FrobeniusBoundPackage) : Prop :=
  F.boundFormula ∧ F.boundDerived

theorem frobenius_bound_closed_from_evidence
    {A : AdmissibleClass} (F : FrobeniusBoundPackage) (E : FrobeniusBoundEvidence F) :
    FrobeniusBoundClosed F := by
  exact And.intro E.boundFormulaClosed E.boundDerivedClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse