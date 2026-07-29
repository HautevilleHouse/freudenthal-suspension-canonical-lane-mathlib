import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure FreudenthalSuspensionSpace (X : Type u) where
  basepoint : X
  suspension : Type u
  northPole : suspension
  southPole : suspension
  meridians : X → (suspension → suspension)
  suspensionTopology : TopologicalSpace suspension
  northSouthDistinct : northPole ≠ southPole

structure FreudenthalAdmittedObject where
  space : FreudenthalSuspensionSpace (Type u)
  simplyConnected : Prop
  homotopyGroupsIsomorphism : Prop
  suspensionMapIsBijection : Prop
  conclusion : suspensionMapIsBijection

def FreudenthalWitnessClosed (O : FreudenthalAdmittedObject) : Prop :=
  O.suspensionMapIsBijection

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse