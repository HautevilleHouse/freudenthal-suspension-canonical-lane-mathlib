import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure SuspensionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SuspensionAdmittedObject where
  space : SuspensionSpace
  baseConnected : Prop
  suspensionTopology : Prop
  suspensionModel : Type
  suspensionTopology' : TopologicalSpace suspensionModel
  homotopyEquivalentToSuspension : Prop
  conclusion : homotopyEquivalentToSuspension

def SuspensionWitnessClosed (O : SuspensionAdmittedObject) : Prop :=
  O.homotopyEquivalentToSuspension

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse