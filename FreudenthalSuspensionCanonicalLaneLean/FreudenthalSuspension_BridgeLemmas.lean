import FreudenthalSuspensionCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

def bridgeClosed (A : AdmissibleSuspensionClass) : Prop :=
  SuspensionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleSuspensionClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse