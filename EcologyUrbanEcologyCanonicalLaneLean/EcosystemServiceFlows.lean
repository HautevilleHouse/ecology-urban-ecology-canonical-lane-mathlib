import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure EcosystemServiceFlowsPackage (A : AdmissibleClass) where
  provisioningServices : Prop
  regulatingServices : Prop
  culturalServices : Prop
  supportingServices : Prop
  flowInterdependencies : Prop

structure EcosystemServiceFlowsEvidence {A : AdmissibleClass} (E : EcosystemServiceFlowsPackage A) where
  provisioningServicesClosed : E.provisioningServices
  regulatingServicesClosed : E.regulatingServices
  culturalServicesClosed : E.culturalServices
  supportingServicesClosed : E.supportingServices
  flowInterdependenciesClosed : E.flowInterdependencies

def EcosystemServiceFlowsClosed {A : AdmissibleClass} (E : EcosystemServiceFlowsPackage A) : Prop :=
  E.provisioningServices ∧ E.regulatingServices ∧
  E.culturalServices ∧ E.supportingServices ∧
  E.flowInterdependencies

theorem ecosystem_service_flows_closed_from_evidence
    {A : AdmissibleClass} (E : EcosystemServiceFlowsPackage A)
    (Ev : EcosystemServiceFlowsEvidence E) : EcosystemServiceFlowsClosed E :=
  And.intro Ev.provisioningServicesClosed
    (And.intro Ev.regulatingServicesClosed
      (And.intro Ev.culturalServicesClosed
        (And.intro Ev.supportingServicesClosed Ev.flowInterdependenciesClosed)))

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse
