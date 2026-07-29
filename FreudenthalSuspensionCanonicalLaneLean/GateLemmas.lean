import canonicalLaneMathlib.AdmissibleClass
import FreudenthalSuspensionCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

def gateClosed (A : SuspensionAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : SuspensionAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse