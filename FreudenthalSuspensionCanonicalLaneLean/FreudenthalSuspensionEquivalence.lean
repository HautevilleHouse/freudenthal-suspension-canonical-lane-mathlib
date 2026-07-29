import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure FreudenthalSuspensionPackage (A : AdmissibleClass) where
  suspension : Type u
  baseSpace : Type v
  fiberProduct : Type w
  suspensionTopology : TopologicalSpace suspension
  baseTopology : TopologicalSpace baseSpace
  fiberTopology : TopologicalSpace fiberProduct
  suspensionConnected : Prop
  homologyExactSequence : Prop
  nConnectedBase : Prop
  suspensionConnectedClosed : suspensionConnected
  homologyExactSequenceClosed : homologyExactSequence
  nConnectedBaseClosed : nConnectedBase

structure FreudenthalSuspensionEvidence {A : AdmissibleClass} (P : FreudenthalSuspensionPackage A) where
  suspensionConnectedClosed : P.suspensionConnected
  homologyExactSequenceClosed : P.homologyExactSequence
  nConnectedBaseClosed : P.nConnectedBase

def FreudenthalSuspensionClosed {A : AdmissibleClass} (P : FreudenthalSuspensionPackage A) : Prop :=
  P.suspensionConnected ∧ P.homologyExactSequence ∧ P.nConnectedBase

theorem freudenthal_suspension_closed_from_evidence {A : AdmissibleClass}
    (P : FreudenthalSuspensionPackage A) (E : FreudenthalSuspensionEvidence P) :
    FreudenthalSuspensionClosed P := by
  exact And.intro E.suspensionConnectedClosed (And.intro E.homologyExactSequenceClosed E.nConnectedBaseClosed)

end HautevilleHouse
end FreudenthalSuspensionCanonicalLaneLean