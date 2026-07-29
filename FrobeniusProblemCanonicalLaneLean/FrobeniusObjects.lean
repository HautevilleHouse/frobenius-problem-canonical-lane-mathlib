import FrobeniusProblemCanonicalLaneLean.AdmissibleClass
namespace HautevilleHouse
namespace FrobeniusProblemCanonicalLaneLean

structure FrobeniusNumberData where
  generators : List ℕ
  generatorCount : ℕ
  largestUnattainable : ℕ
  boundEstablished : Prop

structure FrobeniusAdmittedObject where
  data : FrobeniusNumberData
  generatorsCoprime : Prop
  generatorsCoprimeTerm : generatorsCoprime
  boundEstablishedTerm : data.boundEstablished

end FrobeniusProblemCanonicalLaneLean
end HautevilleHouse