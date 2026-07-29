import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure UrbanHeatIslandPackage where
  surfaceTemperatureDistribution : Type u
  vegetationCover : Type v
  imperviousSurfaceFraction : Type w
  urbanCanopyLayerHeight : Type x
  temperatureDistributionDefined : Prop
  vegetationCoverDefined : Prop
  imperviousSurfaceFractionDefined : Prop
  canopyLayerHeightDefined : Prop
  heatIslandIntensityDefined : Prop

structure UrbanHeatIslandEvidence (H : UrbanHeatIslandPackage) where
  temperatureDistributionDefinedClosed : H.temperatureDistributionDefined
  vegetationCoverDefinedClosed : H.vegetationCoverDefined
  imperviousSurfaceFractionDefinedClosed : H.imperviousSurfaceFractionDefined
  canopyLayerHeightDefinedClosed : H.canopyLayerHeightDefined
  heatIslandIntensityDefinedClosed : H.heatIslandIntensityDefined

def UrbanHeatIslandClosed (H : UrbanHeatIslandPackage) : Prop :=
  H.temperatureDistributionDefined ∧ H.vegetationCoverDefined ∧
  H.imperviousSurfaceFractionDefined ∧ H.canopyLayerHeightDefined ∧
  H.heatIslandIntensityDefined

theorem urban_heat_island_closed_from_evidence (H : UrbanHeatIslandPackage)
    (E : UrbanHeatIslandEvidence H) : UrbanHeatIslandClosed H := by
  exact And.intro E.temperatureDistributionDefinedClosed
    (And.intro E.vegetationCoverDefinedClosed
      (And.intro E.imperviousSurfaceFractionDefinedClosed
        (And.intro E.canopyLayerHeightDefinedClosed E.heatIslandIntensityDefinedClosed)))

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse
