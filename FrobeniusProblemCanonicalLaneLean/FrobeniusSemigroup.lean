import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure FrobeniusSemigroupPackage where
  generators : List ℕ
  semigroupGenerated : Prop
  finiteIndexProperty : Prop
  frobeniusNumber : ℕ
  allButFinitelyGenerated : Prop

structure FrobeniusSemigroupEvidence (S : FrobeniusSemigroupPackage) where
  generatorsClosed : S.semigroupGenerated
  finiteIndexClosed : S.finiteIndexProperty
  frobeniusNumberClosed : S.allButFinitelyGenerated

def FrobeniusSemigroupClosed (S : FrobeniusSemigroupPackage) : Prop :=
  S.semigroupGenerated ∧ S.finiteIndexProperty ∧ S.allButFinitelyGenerated

theorem frobenius_semigroup_closed_from_evidence (S : FrobeniusSemigroupPackage)
    (E : FrobeniusSemigroupEvidence S) : FrobeniusSemigroupClosed S := by
  exact And.intro E.generatorsClosed (And.intro E.finiteIndexClosed E.frobeniusNumberClosed)

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse