import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure BiodiversityResponsePackage where
  speciesRichness : ℕ
  abundanceIndex : ℝ
  diversityIndex : ℝ
  richnessMeasured : Prop
  richnessMeasuredTerm : richnessMeasured
  abundanceComputed : Prop
  abundanceComputedTerm : abundanceComputed
  diversityComputed : Prop
  diversityComputedTerm : diversityComputed

structure BiodiversityResponseEvidence (B : BiodiversityResponsePackage) where
  richnessMeasuredClosed : B.richnessMeasured
  abundanceComputedClosed : B.abundanceComputed
  diversityComputedClosed : B.diversityComputed

def BiodiversityResponseClosed (B : BiodiversityResponsePackage) : Prop :=
  B.richnessMeasured ∧ B.abundanceComputed ∧ B.diversityComputed

theorem biodiversity_response_closed_from_evidence
    (B : BiodiversityResponsePackage) (E : BiodiversityResponseEvidence B) :
    BiodiversityResponseClosed B := by
  exact And.intro E.richnessMeasuredClosed
    (And.intro E.abundanceComputedClosed E.diversityComputedClosed)

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse