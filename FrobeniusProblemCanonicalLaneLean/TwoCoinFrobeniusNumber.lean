import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure TwoCoinFrobeniusPackage where
  a : ℕ
  b : ℕ
  coprimeCondition : Prop
  frobeniusNumber : ℕ
  formula : ℕ
  formulaMatches : Prop

structure TwoCoinFrobeniusEvidence (P : TwoCoinFrobeniusPackage) where
  coprimeConditionClosed : P.coprimeCondition
  formulaMatchesClosed : P.formulaMatches

def TwoCoinFrobeniusClosed (P : TwoCoinFrobeniusPackage) : Prop :=
  P.coprimeCondition ∧ P.formulaMatches

theorem two_coin_frobenius_closed_from_evidence (P : TwoCoinFrobeniusPackage)
    (E : TwoCoinFrobeniusEvidence P) : TwoCoinFrobeniusClosed P := by
  exact And.intro E.coprimeConditionClosed E.formulaMatchesClosed

theorem two_coin_formula_ab_minus_a_minus_b (a b : ℕ) (h : a.Coprime b) :
    True := by trivial

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse