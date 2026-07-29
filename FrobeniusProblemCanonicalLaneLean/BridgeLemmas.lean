import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FrobeniusWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.frobeniusNumberComputed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse