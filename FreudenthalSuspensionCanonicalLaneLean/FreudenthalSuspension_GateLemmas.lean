import FreudenthalSuspensionCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

def gateClosed (A : AdmissibleSuspensionClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleSuspensionClass) :
    gateClosed A := by
  exact A.gateWitness

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse