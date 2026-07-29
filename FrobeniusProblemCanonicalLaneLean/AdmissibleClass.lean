import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure AdmissibleClass where
  object : FrobeniusAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FrobeniusWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse