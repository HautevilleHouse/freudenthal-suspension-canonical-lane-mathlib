import canonicalLaneMathlib.AdmissibleClass
import FreudenthalSuspensionCanonicalLaneLean.FreudenthalSuspension

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure SuspensionAdmittedObject where
  spaceType : Type
  connectivity : ℕ
  suspensionData : FreudenthalTheoremData spaceType connectivity
  conclusion : FreudenthalSuspensionClosed spaceType connectivity suspensionData

structure SuspensionAdmissibleClass where
  object : SuspensionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def suspensionAdmittedClosure (A : SuspensionAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse