import FreudenthalSuspensionCanonicalLaneLean.FreudenthalSuspensionBasic

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FreudenthalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse