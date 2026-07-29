import HautevilleHouse.ComputationalChemistryReactionPathAnalysisCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ComputationalChemistryReactionPathAnalysisCanonicalLaneLean

def ConstrainedReactionPathClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_reaction_path_endgame (A : AdmissibleClass) :
    ConstrainedReactionPathClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalChemistryReactionPathAnalysisCanonicalLaneLean
end HautevilleHouse