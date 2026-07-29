import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputationalChemistryReactionPathAnalysisCanonicalLaneLean.ReactionPathStructures

namespace HautevilleHouse
namespace ComputationalChemistryReactionPathAnalysisCanonicalLaneLean

structure PotentialEnergySurface where
  points: List (Float × Float)
  minimumEnergy: Float
  gradient: List (Float × Float)

def surfaceConvex (pes: PotentialEnergySurface) : Prop :=
  pes.minimumEnergy < 0.0

theorem convexSurface (pes: PotentialEnergySurface) (h: pes.minimumEnergy < 0.0):
  surfaceConvex pes := by
  exact h

end ComputationalChemistryReactionPathAnalysisCanonicalLaneLean
end HautevilleHouse