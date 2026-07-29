import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure PatchConnectivityPackage where
  habitatFragmentation : Prop
  corridorEffectiveness : Prop
  dispersalSuccess : Prop
  geneFlow : Prop

structure PatchConnectivityEvidence (P : PatchConnectivityPackage) where
  habitatFragmentationClosed : P.habitatFragmentation
  corridorEffectivenessClosed : P.corridorEffectiveness
  dispersalSuccessClosed : P.dispersalSuccess
  geneFlowClosed : P.geneFlow

def PatchConnectivityClosed (P : PatchConnectivityPackage) : Prop :=
  P.habitatFragmentation ∧ P.corridorEffectiveness ∧ P.dispersalSuccess ∧ P.geneFlow

theorem patch_connectivity_closed_from_evidence (P : PatchConnectivityPackage) (E : PatchConnectivityEvidence P) : PatchConnectivityClosed P := by
  exact And.intro E.habitatFragmentationClosed (And.intro E.corridorEffectivenessClosed (And.intro E.dispersalSuccessClosed E.geneFlowClosed))

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse