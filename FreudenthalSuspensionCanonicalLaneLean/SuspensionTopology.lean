import FreudenthalSuspensionCanonicalLaneLean.SuspensionConstruction

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure SuspensionTopologyPackage where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  suspensionSpace : Type v
  suspensionTopology : TopologicalSpace suspensionSpace
  suspensionMap : baseSpace → suspensionSpace
  suspensionMapContinuous : Continuous suspensionMap
  suspensionMapClosed : suspensionMapContinuous

structure SuspensionTopologyEvidence (S : SuspensionTopologyPackage) where
  suspensionMapContinuousClosed : S.suspensionMapContinuous

def SuspensionTopologyClosed (S : SuspensionTopologyPackage) : Prop :=
  S.suspensionMapContinuous

theorem suspension_topology_closed_from_evidence
    (S : SuspensionTopologyPackage) (E : SuspensionTopologyEvidence S) :
    SuspensionTopologyClosed S := by
  exact E.suspensionMapContinuousClosed

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse