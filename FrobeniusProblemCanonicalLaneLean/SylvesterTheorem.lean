import FrobeniusProblemCanonicalLaneLean.FrobeniusNumber

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure SylvesterTheoremPackage {F : FrobeniusNumberPackage} (S : F.coinSet.length = 2) where
  twoCoinSet : F.coinSet
  formulaExplicit : Prop
  formulaExplicitTerm : formulaExplicit
  formula : ℕ := let a := F.coinSet.head; let b := (F.coinSet.tail).head; a * b - a - b
  formulaMatchesFrobeniusNumber : formula = F.targetNumber
  formulaMatchesFrobeniusNumberTerm : formulaMatchesFrobeniusNumber

structure SylvesterTheoremEvidence {F : FrobeniusNumberPackage} {S : F.coinSet.length = 2} (P : SylvesterTheoremPackage S) where
  formulaExplicitClosed : P.formulaExplicit
  formulaMatchesFrobeniusNumberClosed : P.formulaMatchesFrobeniusNumber

def SylvesterTheoremClosed {F : FrobeniusNumberPackage} {S : F.coinSet.length = 2} (P : SylvesterTheoremPackage S) : Prop :=
  P.formulaExplicit ∧ P.formulaMatchesFrobeniusNumber

theorem sylvester_theorem_closed_from_evidence {F : FrobeniusNumberPackage} {S : F.coinSet.length = 2} (P : SylvesterTheoremPackage S) (E : SylvesterTheoremEvidence P) :
    SylvesterTheoremClosed P := by
  exact And.intro E.formulaExplicitClosed E.formulaMatchesFrobeniusNumberClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse
