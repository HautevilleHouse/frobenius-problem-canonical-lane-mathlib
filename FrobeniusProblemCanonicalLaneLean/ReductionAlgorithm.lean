import FrobeniusProblemCanonicalLaneLean.CoinProblem

/-!
# Reduction Algorithm Package
-/

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure ReductionAlgorithmPackage (G : GapClassificationPackage) (C : CoinProblemPackage G) where
  algorithmSteps : List (ℕ → ℕ)
  terminationCondition : Prop
  correctness : Prop
  runtime : ℕ

structure ReductionAlgorithmEvidence (G : GapClassificationPackage) (C : CoinProblemPackage G)
    (R : ReductionAlgorithmPackage G C) where
  terminationConditionClosed : R.terminationCondition
  correctnessClosed : R.correctness

def ReductionAlgorithmClosed (G : GapClassificationPackage) (C : CoinProblemPackage G)
    (R : ReductionAlgorithmPackage G C) : Prop :=
  R.terminationCondition ∧ R.correctness

theorem reduction_algorithm_closed_from_evidence
    (G : GapClassificationPackage) (C : CoinProblemPackage G)
    (R : ReductionAlgorithmPackage G C) (E : ReductionAlgorithmEvidence G C R) :
    ReductionAlgorithmClosed G C R := by
  exact And.intro E.terminationConditionClosed E.correctnessClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse