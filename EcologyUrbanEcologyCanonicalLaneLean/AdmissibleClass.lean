import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcology

structure AdmittedUrbanObject where
  site : Type
  ecosystemMetrics : Prop
  anthropogenicBoundary : Prop
  resilienceIndicator : Prop

structure AdmissibleClass where
  object : AdmittedUrbanObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  UrbanWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def UrbanWitnessClosed (O : AdmittedUrbanObject) : Prop :=
  O.ecosystemMetrics ∧ O.resilienceIndicator

end EcologyUrbanEcology
end HautevilleHouse