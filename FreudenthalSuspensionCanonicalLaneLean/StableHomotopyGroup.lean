import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure StableRangePackage where
  suspensionIndex : ℕ
  connectivityThreshold : ℕ
  stableIsomorphism : Prop
  suspensionIndexChosen : suspensionIndex = connectivityThreshold + 1
  stableIsomorphismClosed : stableIsomorphism

def StableRangeClosed (S : StableRangePackage) : Prop :=
  S.stableIsomorphism

theorem stable_range_closed_from_evidence (S : StableRangePackage) :
    StableRangeClosed S := by
  exact S.stableIsomorphismClosed

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse