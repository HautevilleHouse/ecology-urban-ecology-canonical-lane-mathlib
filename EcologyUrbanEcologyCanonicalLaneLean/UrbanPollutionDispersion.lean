import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure UrbanPollutionDispersionPackage where
  emissionSourceInventory : Type u
  atmosphericDispersionModel : Type v
  airQualityStandards : Prop
  healthImpactAssessment : Prop
  mitigationEffectiveness : Prop

structure UrbanPollutionDispersionEvidence (P : UrbanPollutionDispersionPackage) where
  airQualityStandardsClosed : P.airQualityStandards
  healthImpactAssessmentClosed : P.healthImpactAssessment
  mitigationEffectivenessClosed : P.mitigationEffectiveness

def UrbanPollutionDispersionClosed (P : UrbanPollutionDispersionPackage) : Prop :=
  P.airQualityStandards ∧ P.healthImpactAssessment ∧ P.mitigationEffectiveness

theorem urban_pollution_dispersion_closed_from_evidence
    (P : UrbanPollutionDispersionPackage) (E : UrbanPollutionDispersionEvidence P) :
    UrbanPollutionDispersionClosed P := by
  exact And.intro E.airQualityStandardsClosed
    (And.intro E.healthImpactAssessmentClosed E.mitigationEffectivenessClosed)

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse