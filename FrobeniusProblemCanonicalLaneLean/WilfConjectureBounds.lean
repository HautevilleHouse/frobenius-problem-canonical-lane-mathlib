import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure WilfConjectureBoundsPackage where
  generators : Finset ℕ
  frobeniusNumber : ℕ
  numGenerators : ℕ
  wilfInequality : Prop
  boundSatisfied : Prop

structure WilfConjectureBoundsEvidence (P : WilfConjectureBoundsPackage) where
  wilfInequalityClosed : P.wilfInequality
  boundSatisfiedClosed : P.boundSatisfied

def WilfConjectureBoundsClosed (P : WilfConjectureBoundsPackage) : Prop :=
  P.wilfInequality ∧ P.boundSatisfied

theorem wilf_conjecture_bounds_closed_from_evidence (P : WilfConjectureBoundsPackage)
    (E : WilfConjectureBoundsEvidence P) : WilfConjectureBoundsClosed P := by
  exact And.intro E.wilfInequalityClosed E.boundSatisfiedClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse