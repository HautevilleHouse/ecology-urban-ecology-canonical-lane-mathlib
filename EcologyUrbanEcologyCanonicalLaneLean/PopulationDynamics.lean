import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure PopulationDynamicsPackage where
  carryingCapacity : Prop
  growthRate : Prop
  logisticEquation : Prop
  demographicStochasticity : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  carryingCapacityClosed : P.carryingCapacity
  growthRateClosed : P.growthRate
  logisticEquationClosed : P.logisticEquation
  demographicStochasticityClosed : P.demographicStochasticity

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.carryingCapacity ∧ P.growthRate ∧ P.logisticEquation ∧ P.demographicStochasticity

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage) (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.carryingCapacityClosed (And.intro E.growthRateClosed (And.intro E.logisticEquationClosed E.demographicStochasticityClosed))

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse