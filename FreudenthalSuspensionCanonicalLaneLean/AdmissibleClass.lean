import FreudenthalSuspensionCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure AdmissibleClass where
  object : FreudenthalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FreudenthalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse