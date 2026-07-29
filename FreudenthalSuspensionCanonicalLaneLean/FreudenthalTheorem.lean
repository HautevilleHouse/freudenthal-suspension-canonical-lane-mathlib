import FreudenthalSuspensionCanonicalLaneLean.HomotopyGroups

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure FreudenthalTheoremPackage {S : SuspensionTopologyPackage}
    (H : HomotopyGroupsPackage S) where
  freudenthalMapIsIsomorphism : Prop
  rangeOfDimensions : ℕ × ℕ
  isomorphismHoldsInRange : Prop
  freudenthalMapIsIsomorphismClosed : freudenthalMapIsIsomorphism
  isomorphismHoldsInRangeClosed : isomorphismHoldsInRange

structure FreudenthalTheoremEvidence {S : SuspensionTopologyPackage}
    {H : HomotopyGroupsPackage S} (F : FreudenthalTheoremPackage H) where
  freudenthalMapIsIsomorphismClosed : F.freudenthalMapIsIsomorphism
  isomorphismHoldsInRangeClosed : F.isomorphismHoldsInRange

def FreudenthalTheoremClosed {S : SuspensionTopologyPackage}
    {H : HomotopyGroupsPackage S} (F : FreudenthalTheoremPackage H) : Prop :=
  F.freudenthalMapIsIsomorphism ∧ F.isomorphismHoldsInRange

theorem freudenthal_theorem_closed_from_evidence
    {S : SuspensionTopologyPackage} {H : HomotopyGroupsPackage S}
    (F : FreudenthalTheoremPackage H) (E : FreudenthalTheoremEvidence F) :
    FreudenthalTheoremClosed F := by
  exact And.intro E.freudenthalMapIsIsomorphismClosed E.isomorphismHoldsInRangeClosed

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse