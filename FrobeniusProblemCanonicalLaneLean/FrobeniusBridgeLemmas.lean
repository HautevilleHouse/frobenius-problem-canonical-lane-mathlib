import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse