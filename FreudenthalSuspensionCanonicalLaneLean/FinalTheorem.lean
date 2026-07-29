import canonicalLaneMathlib.AdmissibleClass
import FreudenthalSuspensionCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

def ConstrainedFreudenthalClosure (A : SuspensionAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_freudenthal_endgame (A : SuspensionAdmissibleClass) :
    ConstrainedFreudenthalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse