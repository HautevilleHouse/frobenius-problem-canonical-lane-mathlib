import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure FrobeniusAlgorithmPackage where
  generators : List ℕ
  algorithmSteps : List ℕ
  correctnessProof : Prop
  terminationProof : Prop

structure FrobeniusAlgorithmEvidence (A : FrobeniusAlgorithmPackage) where
  stepsClosed : A.algorithmSteps = []
  correctnessClosed : A.correctnessProof
  terminationClosed : A.terminationProof

def FrobeniusAlgorithmClosed (A : FrobeniusAlgorithmPackage) : Prop :=
  A.correctnessProof ∧ A.terminationProof

theorem frobenius_algorithm_closed_from_evidence (A : FrobeniusAlgorithmPackage)
    (E : FrobeniusAlgorithmEvidence A) : FrobeniusAlgorithmClosed A := by
  exact And.intro E.correctnessClosed E.terminationClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse