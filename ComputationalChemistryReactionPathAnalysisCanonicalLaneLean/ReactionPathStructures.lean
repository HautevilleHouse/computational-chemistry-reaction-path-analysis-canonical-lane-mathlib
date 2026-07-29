import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryReactionPathAnalysisCanonicalLaneLean

structure ReactionPath where
  reactants: String
  products: String
  energyBarrier: Float
  transitionState: String

data ReactionPathStep
  | elementaryStep (reactants: String) (products: String) (barrier: Float)
  | intermediate (species: String)

def barrierClosed (path: ReactionPath) : Prop :=
  path.energyBarrier < 100.0

end ComputationalChemistryReactionPathAnalysisCanonicalLaneLean
end HautevilleHouse