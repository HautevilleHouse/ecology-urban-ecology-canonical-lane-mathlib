import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcology

def bridgeClosed (A : AdmissibleClass) : Prop :=
  UrbanWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.resilienceIndicator

end EcologyUrbanEcology
end HautevilleHouse