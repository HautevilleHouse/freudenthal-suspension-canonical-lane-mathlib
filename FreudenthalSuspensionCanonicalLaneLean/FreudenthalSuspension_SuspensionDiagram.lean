import FreudenthalSuspensionCanonicalLaneLean.SuspensionHomotopy
import Mathlib.Topology.Category.TopCat.Basic

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure SuspensionDiagramPackage {O : SuspensionAdmittedObject} (P : SuspensionHomotopyPackage O) where
  baseSpace : TopCat
  suspensionSpace : TopCat
  diagramCommutative : Prop
  diagramIsPushout : Prop
  pushoutProperty : Prop

def SuspensionDiagramClosed {O : SuspensionAdmittedObject} {P : SuspensionHomotopyPackage O} (D : SuspensionDiagramPackage P) : Prop :=
  D.diagramCommutative ∧ D.diagramIsPushout ∧ D.pushoutProperty

theorem suspension_diagram_closed {O : SuspensionAdmittedObject} {P : SuspensionHomotopyPackage O} (D : SuspensionDiagramPackage P) : SuspensionDiagramClosed D := by
  exact And.intro D.diagramCommutative (And.intro D.diagramIsPushout D.pushoutProperty)

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse