import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure ConnectivityFragmentationPackage where
  patchArea : Type
  adjacencyMatrix : patchArea → patchArea → ℝ
  connectivityIndex : ℝ
  fragmentationIndex : ℝ
  connectivityComputed : Prop
  connectivityComputedTerm : connectivityComputed
  fragmentationComputed : Prop
  fragmentationComputedTerm : fragmentationComputed
  landscapeMetricsLink : Prop
  landscapeMetricsLinkTerm : landscapeMetricsLink

structure ConnectivityFragmentationEvidence (C : ConnectivityFragmentationPackage) where
  connectivityComputedClosed : C.connectivityComputed
  fragmentationComputedClosed : C.fragmentationComputed
  landscapeMetricsLinkClosed : C.landscapeMetricsLink

def ConnectivityFragmentationClosed (C : ConnectivityFragmentationPackage) : Prop :=
  C.connectivityComputed ∧ C.fragmentationComputed ∧ C.landscapeMetricsLink

theorem connectivity_fragmentation_closed_from_evidence
    (C : ConnectivityFragmentationPackage) (E : ConnectivityFragmentationEvidence C) :
    ConnectivityFragmentationClosed C := by
  exact And.intro E.connectivityComputedClosed
    (And.intro E.fragmentationComputedClosed E.landscapeMetricsLinkClosed)

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse