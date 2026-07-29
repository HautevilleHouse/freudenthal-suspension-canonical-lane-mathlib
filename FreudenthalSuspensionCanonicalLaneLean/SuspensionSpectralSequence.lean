import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreudenthalSuspensionCanonicalLaneLean

structure SuspensionSpectralSequencePackage (A : AdmissibleClass) where
  spectralSequence : Type u
  E2Page : Type v
  suspensionExactCouple : Prop
  convergence : Prop
  differentialsComputed : Prop
  suspensionExactCoupleClosed : suspensionExactCouple
  convergenceClosed : convergence
  differentialsComputedClosed : differentialsComputed

structure SuspensionSpectralSequenceEvidence {A : AdmissibleClass}
    (P : SuspensionSpectralSequencePackage A) where
  suspensionExactCoupleClosed : P.suspensionExactCouple
  convergenceClosed : P.convergence
  differentialsComputedClosed : P.differentialsComputed

def SuspensionSpectralSequenceClosed {A : AdmissibleClass}
    (P : SuspensionSpectralSequencePackage A) : Prop :=
  P.suspensionExactCouple ∧ P.convergence ∧ P.differentialsComputed

theorem suspension_spectral_sequence_closed_from_evidence {A : AdmissibleClass}
    (P : SuspensionSpectralSequencePackage A) (E : SuspensionSpectralSequenceEvidence P) :
    SuspensionSpectralSequenceClosed P := by
  exact And.intro E.suspensionExactCoupleClosed (And.intro E.convergenceClosed E.differentialsComputedClosed)

end HautevilleHouse
end FreudenthalSuspensionCanonicalLaneLean