import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure DenumerantFormulaPackage where
  coinSet : Finset ℕ
  target : ℕ
  representationCount : ℕ
  formula : Prop
  recurrenceRelation : Prop

structure DenumerantFormulaEvidence (P : DenumerantFormulaPackage) where
  formulaClosed : P.formula
  recurrenceRelationClosed : P.recurrenceRelation

def DenumerantFormulaClosed (P : DenumerantFormulaPackage) : Prop :=
  P.formula ∧ P.recurrenceRelation

theorem denumerant_formula_closed_from_evidence (P : DenumerantFormulaPackage)
    (E : DenumerantFormulaEvidence P) : DenumerantFormulaClosed P := by
  exact And.intro E.formulaClosed E.recurrenceRelationClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse