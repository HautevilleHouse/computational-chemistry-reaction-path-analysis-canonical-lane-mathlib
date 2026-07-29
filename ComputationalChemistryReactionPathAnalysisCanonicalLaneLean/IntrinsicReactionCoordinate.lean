import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputationalChemistryReactionPathAnalysisCanonicalLaneLean.ReactionPathStructures

namespace HautevilleHouse
namespace ComputationalChemistryReactionPathAnalysisCanonicalLaneLean

structure IntrinsicReactionCoordinate where
  reactionPath: ReactionPath
  coordinate: List Float
  converged: Bool

def coordinateBridgeClosed (irc: IntrinsicReactionCoordinate) : Prop :=
  irc.converged = true

theorem intrinsicallyClosed (irc: IntrinsicReactionCoordinate) (h: irc.converged):
  coordinateBridgeClosed irc := by
  exact h

end ComputationalChemistryReactionPathAnalysisCanonicalLaneLean
end HautevilleHouse