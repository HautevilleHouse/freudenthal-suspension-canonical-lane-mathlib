import canonicalLaneMathlib.AdmissibleClass
import FreudenthalSuspensionCanonicalLaneLean.SuspensionAdmissibleClass

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

def bridgeClosed (A : SuspensionAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : SuspensionAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse