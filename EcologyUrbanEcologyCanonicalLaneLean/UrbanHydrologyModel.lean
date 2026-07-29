import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure UrbanHydrologyModelPackage where
  precipitationRunoff : Type u
  infiltrationCapacity : Type v
  stormwaterManagement : Prop
  waterQualityIndices : Prop
  groundwaterRecharge : Prop

structure UrbanHydrologyModelEvidence (P : UrbanHydrologyModelPackage) where
  stormwaterManagementClosed : P.stormwaterManagement
  waterQualityIndicesClosed : P.waterQualityIndices
  groundwaterRechargeClosed : P.groundwaterRecharge

def UrbanHydrologyModelClosed (P : UrbanHydrologyModelPackage) : Prop :=
  P.stormwaterManagement ∧ P.waterQualityIndices ∧ P.groundwaterRecharge

theorem urban_hydrology_model_closed_from_evidence
    (P : UrbanHydrologyModelPackage) (E : UrbanHydrologyModelEvidence P) :
    UrbanHydrologyModelClosed P := by
  exact And.intro E.stormwaterManagementClosed
    (And.intro E.waterQualityIndicesClosed E.groundwaterRechargeClosed)

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse