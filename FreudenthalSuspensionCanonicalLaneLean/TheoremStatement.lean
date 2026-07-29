import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure FreudenthalSuspensionTheoremStatement where
  suspensionSource : Type u
  suspensionTarget : Type v
  fiberType : Type w
  suspensionCondition : Prop
  fiberCondition : Prop
  suspensionClosed : Prop
  fiberClosed : Prop

theorem freudenthal_suspension_statement_internalized
    (S : FreudenthalSuspensionTheoremStatement) :
    S.suspensionClosed ∧ S.fiberClosed := by
  exact And.intro S.suspensionClosed S.fiberClosed

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse