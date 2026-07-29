import FrobeniusProblemCanonicalLaneLean.RiemannianCurvature

/-!
# Semigroup Package
-/

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure SemigroupPackage where
  carrier : Type u
  addition : carrier → carrier → carrier
  associativity : ∀ a b c : carrier, addition (addition a b) c = addition a (addition b c)
  identity : carrier
  identityLeft : ∀ a : carrier, addition identity a = a
  identityRight : ∀ a : carrier, addition a identity = a

structure SemigroupEvidence (S : SemigroupPackage) where
  associativityClosed : S.associativity
  identityLeftClosed : S.identityLeft
  identityRightClosed : S.identityRight

def SemigroupClosed (S : SemigroupPackage) : Prop :=
  S.associativity ∧ S.identityLeft ∧ S.identityRight

theorem semigroup_closed_from_evidence (S : SemigroupPackage)
    (E : SemigroupEvidence S) : SemigroupClosed S := by
  exact And.intro E.associativityClosed
    (And.intro E.identityLeftClosed E.identityRightClosed)

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse