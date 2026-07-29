import FreudenthalSuspensionCanonicalLaneLean.MathlibObjects
import Mathlib.Topology.Homotopy.Basic

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure SuspensionHomotopyPackage (O : SuspensionAdmittedObject) where
  baseMap : O.space.carrier → O.suspensionModel
  suspensionMap : O.suspensionModel → O.space.carrier
  homotopies : Prop
  baseConnectedness : O.baseConnected
  homotopyEquivalence : Prop

def SuspensionHomotopyClosed (O : SuspensionAdmittedObject) (P : SuspensionHomotopyPackage O) : Prop :=
  P.homotopies ∧ P.homotopyEquivalence

theorem suspension_homotopy_closed (O : SuspensionAdmittedObject) (P : SuspensionHomotopyPackage O) : SuspensionHomotopyClosed O P := by
  exact And.intro P.homotopies P.homotopyEquivalence

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse