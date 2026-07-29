import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure UrbanLandCoverPackage where
  landCoverTypes : Type u
  timeSeriesData : Type v
  patchDynamics : Prop
  connectivityIndex : Prop
  fragmentationMetrics : Prop
  speciesMovement : Prop

structure UrbanLandCoverEvidence (U : UrbanLandCoverPackage) where
  patchDynamicsClosed : U.patchDynamics
  connectivityIndexClosed : U.connectivityIndex
  fragmentationMetricsClosed : U.fragmentationMetrics
  speciesMovementClosed : U.speciesMovement

def UrbanLandCoverClosed (U : UrbanLandCoverPackage) : Prop :=
  U.patchDynamics ∧ U.connectivityIndex ∧ U.fragmentationMetrics ∧ U.speciesMovement

theorem urban_land_cover_closed_from_evidence (U : UrbanLandCoverPackage) (E : UrbanLandCoverEvidence U) :
    UrbanLandCoverClosed U := by
  exact And.intro E.patchDynamicsClosed (And.intro E.connectivityIndexClosed (And.intro E.fragmentationMetricsClosed E.speciesMovementClosed))

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse