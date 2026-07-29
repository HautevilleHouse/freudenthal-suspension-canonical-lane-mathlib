import FreudenthalSuspensionCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FreudenthalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FreudenthalAdmittedObject where
  space : FreudenthalSpace
  connected : Prop
  simplyConnected : Prop
  suspensionModel : Type
  suspensionTopology : TopologicalSpace suspensionModel
  freudenthalTheoremHolds : Prop
  conclusion : freudenthalTheoremHolds

structure FreudenthalEndgameState where
  object : FreudenthalAdmittedObject

def FreudenthalWitnessClosed (O : FreudenthalAdmittedObject) : Prop :=
  O.freudenthalTheoremHolds

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse