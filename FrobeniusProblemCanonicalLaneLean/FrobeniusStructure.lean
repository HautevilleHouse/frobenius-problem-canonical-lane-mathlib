import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure FrobeniusCoinSystem where
  coinValues : List ℕ
  gcdOne : ∀ d, (∀ x ∈ coinValues, d ∣ x) → d = 1
  positiveValues : ∀ x ∈ coinValues, x > 0

structure FrobeniusAdmittedObject where
  coinSystem : FrobeniusCoinSystem
  largestNonRepresentable : ℕ
  frobeniusNumber : ℕ
  frobeniusNumberComputed : frobeniusNumber = largestNonRepresentable
  representableProof : ∀ n : ℕ, n > largestNonRepresentable → (∃ (combo : ℕ → ℕ), (∑ x in coinSystem.coinValues, combo x * x) = n)
  nonRepresentableProof :¬ (∃ (combo : ℕ → ℕ), (∑ x in coinSystem.coinValues, combo x * x) = largestNonRepresentable)

def FrobeniusWitnessClosed (O : FrobeniusAdmittedObject) : Prop :=
  O.frobeniusNumber = O.largestNonRepresentable ∧
  (∀ n : ℕ, n > O.largestNonRepresentable → (∃ (combo : ℕ → ℕ), (∑ x in O.coinSystem.coinValues, combo x * x) = n)) ∧
  ¬ (∃ (combo : ℕ → ℕ), (∑ x in O.coinSystem.coinValues, combo x * x) = O.largestNonRepresentable)

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse