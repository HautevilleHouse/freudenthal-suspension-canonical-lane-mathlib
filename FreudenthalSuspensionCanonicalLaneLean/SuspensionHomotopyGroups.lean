import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure SuspensionHomotopyGroupsPackage where
  baseHomotopyGroups : Nat → Type
  suspendedHomotopyGroups : Nat → Type
  suspensionMap : (n : Nat) → baseHomotopyGroups n → suspendedHomotopyGroups (n+1)
  mapInjectivityRange : Prop
  mapSurjectivityRange : Prop

def SuspensionHomotopyGroupsClosed (P : SuspensionHomotopyGroupsPackage) : Prop :=
  P.mapInjectivityRange ∧ P.mapSurjectivityRange

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse