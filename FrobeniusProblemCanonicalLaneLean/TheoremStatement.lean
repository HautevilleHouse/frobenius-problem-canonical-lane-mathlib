import FrobeniusProblemCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure FrobeniusSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FrobeniusAdmittedObject where
  space : FrobeniusSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  coinProblem : Prop
  frobeniusNumberExists : Prop
  conclusion : frobeniusNumberExists

def FrobeniusWitnessClosed (O : FrobeniusAdmittedObject) : Prop :=
  O.frobeniusNumberExists

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse