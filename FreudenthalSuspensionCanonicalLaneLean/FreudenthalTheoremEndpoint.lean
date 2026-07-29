import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure FreudenthalTheoremEndpointPackage (A : AdmissibleClass) where
  targetHomotopyGroup : Type u
  suspensionTheorem : Prop
  nConnectedRange : Prop
  endpointCondition : Prop
  suspensionTheoremClosed : suspensionTheorem
  nConnectedRangeClosed : nConnectedRange
  endpointConditionClosed : endpointCondition

structure FreudenthalTheoremEndpointEvidence {A : AdmissibleClass}
    (P : FreudenthalTheoremEndpointPackage A) where
  suspensionTheoremClosed : P.suspensionTheorem
  nConnectedRangeClosed : P.nConnectedRange
  endpointConditionClosed : P.endpointCondition

def FreudenthalTheoremEndpointClosed {A : AdmissibleClass}
    (P : FreudenthalTheoremEndpointPackage A) : Prop :=
  P.suspensionTheorem ∧ P.nConnectedRange ∧ P.endpointCondition

theorem freudenthal_theorem_endpoint_closed_from_evidence {A : AdmissibleClass}
    (P : FreudenthalTheoremEndpointPackage A) (E : FreudenthalTheoremEndpointEvidence P) :
    FreudenthalTheoremEndpointClosed P := by
  exact And.intro E.suspensionTheoremClosed (And.intro E.nConnectedRangeClosed E.endpointConditionClosed)

end HautevilleHouse
end FreudenthalSuspensionCanonicalLaneLean