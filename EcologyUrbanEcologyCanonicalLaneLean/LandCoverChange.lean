import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyUrbanEcologyCanonicalLaneLean

structure LandCoverChangePackage where
  landCoverTypes : Type
  changeMatrix : landCoverTypes → landCoverTypes → ℝ
  transitionRates : Prop
  transitionRatesTerm : transitionRates
  urbanExpansion : Prop
  urbanExpansionTerm : urbanExpansion
  greening : Prop
  greeningTerm : greening

structure LandCoverChangeEvidence (L : LandCoverChangePackage) where
  transitionRatesClosed : L.transitionRates
  urbanExpansionClosed : L.urbanExpansion
  greeningClosed : L.greening

def LandCoverChangeClosed (L : LandCoverChangePackage) : Prop :=
  L.transitionRates ∧ L.urbanExpansion ∧ L.greening

theorem land_cover_change_closed_from_evidence
    (L : LandCoverChangePackage) (E : LandCoverChangeEvidence L) :
    LandCoverChangeClosed L := by
  exact And.intro E.transitionRatesClosed
    (And.intro E.urbanExpansionClosed E.greeningClosed)

end EcologyUrbanEcologyCanonicalLaneLean
end HautevilleHouse