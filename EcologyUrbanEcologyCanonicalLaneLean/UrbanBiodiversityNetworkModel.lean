import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure UrbanBiodiversityNetworkPackage where
  speciesRichness : Type u
  habitatConnectivity : Type v
  corridorQuality : Type w
  urbanMatrixResistance : Type x
  speciesRichnessDefined : Prop
  habitatConnectivityDefined : Prop
  corridorQualityDefined : Prop
  urbanMatrixResistanceDefined : Prop
  speciesRichnessDefinedTerm : speciesRichnessDefined
  habitatConnectivityDefinedTerm : habitatConnectivityDefined
  corridorQualityDefinedTerm : corridorQualityDefined
  urbanMatrixResistanceDefinedTerm : urbanMatrixResistanceDefined

structure UrbanBiodiversityNetworkEvidence
    (B : UrbanBiodiversityNetworkPackage) where
  speciesRichnessDefinedClosed : B.speciesRichnessDefined
  habitatConnectivityDefinedClosed : B.habitatConnectivityDefined
  corridorQualityDefinedClosed : B.corridorQualityDefined
  urbanMatrixResistanceDefinedClosed : B.urbanMatrixResistanceDefined

def UrbanBiodiversityNetworkClosed (B : UrbanBiodiversityNetworkPackage) : Prop :=
  B.speciesRichnessDefined ∧ B.habitatConnectivityDefined ∧
  B.corridorQualityDefined ∧ B.urbanMatrixResistanceDefined

theorem urban_biodiversity_network_closed_from_evidence
    (B : UrbanBiodiversityNetworkPackage)
    (E : UrbanBiodiversityNetworkEvidence B) : UrbanBiodiversityNetworkClosed B := by
  exact And.intro E.speciesRichnessDefinedClosed
    (And.intro E.habitatConnectivityDefinedClosed
      (And.intro E.corridorQualityDefinedClosed E.urbanMatrixResistanceDefinedClosed))

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse
