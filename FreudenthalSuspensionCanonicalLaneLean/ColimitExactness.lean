import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure ColimitExactnessPackage where
  suspensionDiagram : Type u → Type u
  colimitExists : Prop
  exactSequence : Prop
  colimitCalculation : Prop
  colimitExistsClosed : colimitExists
  exactSequenceClosed : exactSequence
  colimitCalculationClosed : colimitCalculation

def ColimitExactnessClosed (C : ColimitExactnessPackage) : Prop :=
  C.colimitExists ∧ C.exactSequence ∧ C.colimitCalculation

theorem colimit_exactness_closed_from_evidence (C : ColimitExactnessPackage) :
    ColimitExactnessClosed C := by
  exact And.intro C.colimitExistsClosed
    (And.intro C.exactSequenceClosed C.colimitCalculationClosed)

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse