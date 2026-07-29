import canonicalLaneMathlib.AdmissibleClass
import EcologyUrbanEcologyCanonicalLaneLean.UrbanLandCover
import EcologyUrbanEcologyCanonicalLaneLean.EcosystemServices

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

def ConstrainedEcologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ecology_endgame (A : AdmissibleClass) :
    ConstrainedEcologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse