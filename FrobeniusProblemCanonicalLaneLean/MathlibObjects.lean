import FrobeniusProblemCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Nat.Basic

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FrobeniusSpace where
  carrier : Type
  semigroup : AddSemigroup carrier

structure FrobeniusAdmittedObject where
  space : FrobeniusSpace
  coprimalityCondition : Prop
  generatableSet : Set ℕ
  generatableSetClosed : coprimalityCondition → (∀ n, n ≥ someBound → n ∈ generatableSet)
  conclusion : generatableSetClosed coprimalityCondition

structure FrobeniusEndgameState where
  object : FrobeniusAdmittedObject

def FrobeniusWitnessClosed (O : FrobeniusAdmittedObject) : Prop :=
  O.conclusion

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse
