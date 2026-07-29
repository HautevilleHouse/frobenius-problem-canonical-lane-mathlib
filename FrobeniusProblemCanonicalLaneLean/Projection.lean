import FrobeniusProblemCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def frobeniusProjection : Projection FrobeniusEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem frobenius_projection_idempotent (x : FrobeniusEndgameState) :
    frobeniusProjection.toFun (frobeniusProjection.toFun x) = frobeniusProjection.toFun x := by
  exact frobeniusProjection.idempotent x

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse