import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure SuspensionSpace (X : Type) where
  carrier : Type
  topology : TopologicalSpace carrier
  basepoint : carrier
  suspension : Type
  suspensionTopology : TopologicalSpace suspension
  suspensionMap : carrier → suspension
  suspensionMapCont : Continuous suspensionMap

structure ConnectednessCondition (X : Type) where
  isConnected : Prop
  isSimplyConnected : Prop
  connectivityDegree : ℕ
  connectivityDegreeTerm : connectivityDegree ≥ 1

structure HomotopyGroupSuspension (X : Type) (n : ℕ) where
  sourceHomotopyGroup : Type
  targetHomotopyGroup : Type
  suspensionInducedMap : sourceHomotopyGroup → targetHomotopyGroup
  isIsomorphismBelow : Prop
  isEpimorphismAt : Prop
  isomorphismBound : ℕ
  isomorphismBoundTerm : n ≤ 2 * isomorphismBound + 1

structure FreudenthalTheoremData (X : Type) (k : ℕ) where
  suspensionSpace : SuspensionSpace X
  connectedness : ConnectednessCondition X
  homotopyGroupSuspension : HomotopyGroupSuspension X k
  connectivityCondition : connectedness.connectivityDegree ≥ 2*k + 1
  suspensionInducedIsIso : ∀ (n : ℕ), n ≤ 2*k → 
    (homotopyGroupSuspension.targetHomotopyGroup ≃ homotopyGroupSuspension.sourceHomotopyGroup)
  suspensionInducedIsEpi : ∀ (n : ℕ), n ≤ 2*k + 1 →
    Function.Surjective homotopyGroupSuspension.suspensionInducedMap

def FreudenthalSuspensionClosed (X : Type) (k : ℕ) (D : FreudenthalTheoremData X k) : Prop :=
  D.connectivityCondition ∧
  D.suspensionInducedIsIso ∧
  D.suspensionInducedIsEpi

end FreudenthalSuspensionCanonicalLaneLean
end HautevilleHouse