import FrobeniusProblemCanonicalLaneLean.GapClassification

/-!
# Coin Problem Package
-/

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure CoinProblemPackage (G : GapClassificationPackage) where
  coinSet : List ℕ
  frobeniusNumber : ℕ
  generatingSet : G.coinSet
  allGaps : Prop
  symmetric : Prop

structure CoinProblemEvidence (G : GapClassificationPackage) (C : CoinProblemPackage G) where
  allGapsClosed : C.allGaps
  symmetricClosed : C.symmetric

def CoinProblemClosed (G : GapClassificationPackage) (C : CoinProblemPackage G) : Prop :=
  C.allGaps ∧ C.symmetric

theorem coin_problem_closed_from_evidence
    (G : GapClassificationPackage) (C : CoinProblemPackage G)
    (E : CoinProblemEvidence G C) : CoinProblemClosed G C := by
  exact And.intro E.allGapsClosed E.symmetricClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse