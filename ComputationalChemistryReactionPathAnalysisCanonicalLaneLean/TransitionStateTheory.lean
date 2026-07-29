import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputationalChemistryReactionPathAnalysisCanonicalLaneLean.ReactionPathStructures

namespace HautevilleHouse
namespace ComputationalChemistryReactionPathAnalysisCanonicalLaneLean

structure TransitionState where
  species: String
  energy: Float
  imaginaryFrequency: Float

def stableTransitionState (ts: TransitionState) : Prop :=
  ts.imaginaryFrequency < 0.0

theorem transitionStateStable (ts: TransitionState) (h: ts.imaginaryFrequency < 0.0):
  stableTransitionState ts := by
  exact h

end ComputationalChemistryReactionPathAnalysisCanonicalLaneLean
end HautevilleHouse