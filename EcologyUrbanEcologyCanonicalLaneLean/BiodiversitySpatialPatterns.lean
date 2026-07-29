import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure BiodiversitySpatialPatternsPackage (A : AdmissibleClass) where
  speciesRichnessGradient : Prop
  communityCompositionTurnover : Prop
  habitatFragmentationEffects : Prop
  dispersalLimitation : Prop

structure BiodiversitySpatialPatternsEvidence {A : AdmissibleClass} (B : BiodiversitySpatialPatternsPackage A) where
  speciesRichnessGradientClosed : B.speciesRichnessGradient
  communityCompositionTurnoverClosed : B.communityCompositionTurnover
  habitatFragmentationEffectsClosed : B.habitatFragmentationEffects
  dispersalLimitationClosed : B.dispersalLimitation

def BiodiversitySpatialPatternsClosed {A : AdmissibleClass} (B : BiodiversitySpatialPatternsPackage A) : Prop :=
  B.speciesRichnessGradient ∧ B.communityCompositionTurnover ∧
  B.habitatFragmentationEffects ∧ B.dispersalLimitation

theorem biodiversity_spatial_patterns_closed_from_evidence
    {A : AdmissibleClass} (B : BiodiversitySpatialPatternsPackage A)
    (Ev : BiodiversitySpatialPatternsEvidence B) : BiodiversitySpatialPatternsClosed B :=
  And.intro Ev.speciesRichnessGradientClosed
    (And.intro Ev.communityCompositionTurnoverClosed
      (And.intro Ev.habitatFragmentationEffectsClosed Ev.dispersalLimitationClosed))

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse
