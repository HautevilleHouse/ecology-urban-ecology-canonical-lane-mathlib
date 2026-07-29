import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure UrbanEcosystemServicesPackage where
  carbonSequestrationRate : Type u
  airPollutantRemovalRate : Type v
  stormwaterRetentionCapacity : Type w
  urbanCoolingEffect : Type x
  carbonSequestrationRateDefined : Prop
  airPollutantRemovalRateDefined : Prop
  stormwaterRetentionCapacityDefined : Prop
  urbanCoolingEffectDefined : Prop

structure UrbanEcosystemServicesEvidence (S : UrbanEcosystemServicesPackage) where
  carbonSequestrationRateDefinedClosed : S.carbonSequestrationRateDefined
  airPollutantRemovalRateDefinedClosed : S.airPollutantRemovalRateDefined
  stormwaterRetentionCapacityDefinedClosed : S.stormwaterRetentionCapacityDefined
  urbanCoolingEffectDefinedClosed : S.urbanCoolingEffectDefined

def UrbanEcosystemServicesClosed (S : UrbanEcosystemServicesPackage) : Prop :=
  S.carbonSequestrationRateDefined ∧ S.airPollutantRemovalRateDefined ∧
  S.stormwaterRetentionCapacityDefined ∧ S.urbanCoolingEffectDefined

theorem urban_ecosystem_services_closed_from_evidence
    (S : UrbanEcosystemServicesPackage)
    (E : UrbanEcosystemServicesEvidence S) : UrbanEcosystemServicesClosed S := by
  exact And.intro E.carbonSequestrationRateDefinedClosed
    (And.intro E.airPollutantRemovalRateDefinedClosed
      (And.intro E.stormwaterRetentionCapacityDefinedClosed
        E.urbanCoolingEffectDefinedClosed))

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse
