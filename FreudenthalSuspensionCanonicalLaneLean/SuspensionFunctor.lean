import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure SuspendedSpace where
  base : Type u
  baseTopology : TopologicalSpace base
  suspension : Type u
  suspensionTopology : TopologicalSpace suspension
  baseInclusion : base → suspension
  conePoints : suspension
  suspensionMap : ∀ (f : base → SuspendedSpace), suspension → suspension

structure SuspensionFunctorPackage where
  functoriality : Prop
  naturalitySquare : Prop
  suspensionOfMap : Prop
  functorialityClosed : functoriality
  naturalitySquareClosed : naturalitySquare
  suspensionOfMapClosed : suspensionOfMap

def SuspensionFunctorClosed (F : SuspensionFunctorPackage) : Prop :=
  F.functoriality ∧ F.naturalitySquare ∧ F.suspensionOfMap

theorem suspension_functor_closed_from_evidence (F : SuspensionFunctorPackage) :
    SuspensionFunctorClosed F := by
  exact And.intro F.functorialityClosed
    (And.intro F.naturalitySquareClosed F.suspensionOfMapClosed)

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse