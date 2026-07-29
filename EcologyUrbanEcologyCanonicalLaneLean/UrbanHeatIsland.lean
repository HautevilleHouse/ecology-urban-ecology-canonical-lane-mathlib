import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure UrbanHeatIslandPackage where
  surfaceTemperature : Prop
  albedoEffect : Prop
  vegetationCooling : Prop
  buildingMaterials : Prop

structure UrbanHeatIslandEvidence (U : UrbanHeatIslandPackage) where
  surfaceTemperatureClosed : U.surfaceTemperature
  albedoEffectClosed : U.albedoEffect
  vegetationCoolingClosed : U.vegetationCooling
  buildingMaterialsClosed : U.buildingMaterials

def UrbanHeatIslandClosed (U : UrbanHeatIslandPackage) : Prop :=
  U.surfaceTemperature ∧ U.albedoEffect ∧ U.vegetationCooling ∧ U.buildingMaterials

theorem urban_heat_island_closed_from_evidence (U : UrbanHeatIslandPackage) (E : UrbanHeatIslandEvidence U) : UrbanHeatIslandClosed U := by
  exact And.intro E.surfaceTemperatureClosed (And.intro E.albedoEffectClosed (And.intro E.vegetationCoolingClosed E.buildingMaterialsClosed))

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse