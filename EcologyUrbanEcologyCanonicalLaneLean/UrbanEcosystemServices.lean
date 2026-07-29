import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure UrbanEcosystemServicesPackage where
  carbonSequestration : Type u
  urbanHeatIslandMitigation : Type v
  stormwaterRetention : Prop
  pollinationServices : Prop
  culturalServices : Prop

structure UrbanEcosystemServicesEvidence (P : UrbanEcosystemServicesPackage) where
  stormwaterRetentionClosed : P.stormwaterRetention
  pollinationServicesClosed : P.pollinationServices
  culturalServicesClosed : P.culturalServices

def UrbanEcosystemServicesClosed (P : UrbanEcosystemServicesPackage) : Prop :=
  P.stormwaterRetention ∧ P.pollinationServices ∧ P.culturalServices

theorem urban_ecosystem_services_closed_from_evidence
    (P : UrbanEcosystemServicesPackage) (E : UrbanEcosystemServicesEvidence P) :
    UrbanEcosystemServicesClosed P := by
  exact And.intro E.stormwaterRetentionClosed
    (And.intro E.pollinationServicesClosed E.culturalServicesClosed)

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse