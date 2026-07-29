import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure UrbanHabitatFragmentationPackage where
  landscapePatchType : Type u
  fragmentSizeDistribution : Type v
  connectivityIndex : Prop
  edgeEffectDepth : Prop
  matrixQuality : Prop

structure UrbanHabitatFragmentationEvidence (P : UrbanHabitatFragmentationPackage) where
  connectivityIndexClosed : P.connectivityIndex
  edgeEffectDepthClosed : P.edgeEffectDepth
  matrixQualityClosed : P.matrixQuality

def UrbanHabitatFragmentationClosed (P : UrbanHabitatFragmentationPackage) : Prop :=
  P.connectivityIndex ∧ P.edgeEffectDepth ∧ P.matrixQuality

theorem urban_habitat_fragmentation_closed_from_evidence
    (P : UrbanHabitatFragmentationPackage) (E : UrbanHabitatFragmentationEvidence P) :
    UrbanHabitatFragmentationClosed P := by
  exact And.intro E.connectivityIndexClosed
    (And.intro E.edgeEffectDepthClosed E.matrixQualityClosed)

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse