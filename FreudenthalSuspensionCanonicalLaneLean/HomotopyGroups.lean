import FreudenthalSuspensionCanonicalLaneLean.SuspensionTopology
import Mathlib.Topology.Homotopy.HomotopyGroup

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure HomotopyGroupsPackage (S : SuspensionTopologyPackage) where
  n : ℕ
  homotopyGroup : Type u
  suspensionHomomorphism : homotopyGroup → homotopyGroup
  suspensionHomomorphismDefined : Prop
  suspensionHomomorphismDefinedClosed : suspensionHomomorphismDefined

structure HomotopyGroupsEvidence {S : SuspensionTopologyPackage}
    (H : HomotopyGroupsPackage S) where
  suspensionHomomorphismDefinedClosed : H.suspensionHomomorphismDefined

def HomotopyGroupsClosed {S : SuspensionTopologyPackage}
    (H : HomotopyGroupsPackage S) : Prop :=
  H.suspensionHomomorphismDefined

theorem homotopy_groups_closed_from_evidence
    {S : SuspensionTopologyPackage} (H : HomotopyGroupsPackage S)
    (E : HomotopyGroupsEvidence H) : HomotopyGroupsClosed H := by
  exact E.suspensionHomomorphismDefinedClosed

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse