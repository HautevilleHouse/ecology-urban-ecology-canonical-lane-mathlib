import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure UrbanBiodiversityHotspotPackage where
  speciesRichness : Type u
  habitatQualityIndex : Type v
  corridorConnectivity : Prop
  anthropogenicPressure : Prop
  conservationPriority : Prop

structure UrbanBiodiversityHotspotEvidence (P : UrbanBiodiversityHotspotPackage) where
  corridorConnectivityClosed : P.corridorConnectivity
  anthropogenicPressureClosed : P.anthropogenicPressure
  conservationPriorityClosed : P.conservationPriority

def UrbanBiodiversityHotspotClosed (P : UrbanBiodiversityHotspotPackage) : Prop :=
  P.corridorConnectivity ∧ P.anthropogenicPressure ∧ P.conservationPriority

theorem urban_biodiversity_hotspot_closed_from_evidence
    (P : UrbanBiodiversityHotspotPackage) (E : UrbanBiodiversityHotspotEvidence P) :
    UrbanBiodiversityHotspotClosed P := by
  exact And.intro E.corridorConnectivityClosed
    (And.intro E.anthropogenicPressureClosed E.conservationPriorityClosed)

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse