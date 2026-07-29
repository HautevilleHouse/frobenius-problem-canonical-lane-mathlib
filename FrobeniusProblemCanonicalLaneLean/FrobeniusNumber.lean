import FrobeniusProblemCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure FrobeniusNumberPackage where
  coinSet : List ℕ
  coinSetCoprime : Prop
  targetNumber : ℕ
  isLargestNonRepresentable : Prop
  coinSetCoprimeTerm : coinSetCoprime
  isLargestNonRepresentableTerm : isLargestNonRepresentable

structure FrobeniusNumberEvidence (F : FrobeniusNumberPackage) where
  coinSetCoprimeClosed : F.coinSetCoprime
  isLargestNonRepresentableClosed : F.isLargestNonRepresentable

def FrobeniusNumberClosed (F : FrobeniusNumberPackage) : Prop :=
  F.coinSetCoprime ∧ F.isLargestNonRepresentable

theorem frobenius_number_closed_from_evidence (F : FrobeniusNumberPackage) (E : FrobeniusNumberEvidence F) :
    FrobeniusNumberClosed F := by
  exact And.intro E.coinSetCoprimeClosed E.isLargestNonRepresentableClosed

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse
