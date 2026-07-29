import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure UrbanEcologicalPatchPackage where
  patchArea : Type u
  patchPerimeter : Type v
  patchConnectivity : Type w
  areaDefined : Prop
  perimeterDefined : Prop
  connectivityDefined : Prop
  patchShapeIndex : Prop

structure UrbanEcologicalPatchEvidence (P : UrbanEcologicalPatchPackage) where
  areaDefinedClosed : P.areaDefined
  perimeterDefinedClosed : P.perimeterDefined
  connectivityDefinedClosed : P.connectivityDefined
  patchShapeIndexClosed : P.patchShapeIndex

def UrbanEcologicalPatchClosed (P : UrbanEcologicalPatchPackage) : Prop :=
  P.areaDefined ∧ P.perimeterDefined ∧ P.connectivityDefined ∧ P.patchShapeIndex

theorem urban_ecological_patch_closed_from_evidence (P : UrbanEcologicalPatchPackage)
    (E : UrbanEcologicalPatchEvidence P) : UrbanEcologicalPatchClosed P := by
  exact And.intro E.areaDefinedClosed
    (And.intro E.perimeterDefinedClosed
      (And.intro E.connectivityDefinedClosed E.patchShapeIndexClosed))

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse
