import canonicalLaneMathlib.AdmissibleClass
import ComputationalChemistryReactionPathAnalysisCanonicalLaneLean.ReactionCoordinateEnergy
import ComputationalChemistryReactionPathAnalysisCanonicalLaneLean.TransitionStateTheory
import ComputationalChemistryReactionPathAnalysisCanonicalLaneLean.PotentialEnergySurface

namespace HautevilleHouse
namespace ComputationalChemistryReactionPathAnalysisCanonicalLaneLean

structure ReactionPathAdmissibleClass where
  rcClass : AdmissibleReactionClass
  tsClass : AdmissiblePESClass  -- simplified
  bridgeReaction : BridgeEnergyProfile rcClass.reactionCoordinate
  gatePES : PESAdmissible tsClass.pes

definition ReactionPathClosure (A : ReactionPathAdmissibleClass) : Prop :=
  BridgeEnergyProfile A.rcClass.reactionCoordinate ∧ PESAdmissible A.tsClass.pes

theorem reaction_path_endgame (A : ReactionPathAdmissibleClass) : ReactionPathClosure A := by
  exact And.intro A.bridgeReaction A.gatePES

end ComputationalChemistryReactionPathAnalysisCanonicalLaneLean
end HautevilleHouse