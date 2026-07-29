import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure AdmissibleSuspensionClass where
  object : SuspensionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedSuspensionClosure (A : AdmissibleSuspensionClass) : Prop :=
  SuspensionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse