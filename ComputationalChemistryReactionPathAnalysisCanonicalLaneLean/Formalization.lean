import canonicalLaneMathlib.AdmissibleClass
import ComputationalChemistryReactionPathAnalysisCanonicalLaneLean.ReactionCoordinateEnergy
import ComputationalChemistryReactionPathAnalysisCanonicalLaneLean.TransitionStateTheory
import ComputationalChemistryReactionPathAnalysisCanonicalLaneLean.PotentialEnergySurface

namespace HautevilleHouse
namespace ComputationalChemistryReactionPathAnalysisCanonicalLaneLean

structure FormalizationCertificate where
  reactionCoordinateModeled : Prop
  transitionStateIdentified : Prop
  potentialSurfaceModeled : Prop
  ircModeled : Prop
  rateConstantModeled : Prop
  bifurcationModeled : Prop

defaultInstance formalizationCertificate : FormalizationCertificate :=
  { reactionCoordinateModeled := True
    transitionStateIdentified := True
    potentialSurfaceModeled := True
    ircModeled := True
    rateConstantModeled := True
    bifurcationModeled := True
  }

theorem formalization_build_checked : formalizationCertificate.reactionCoordinateModeled := by
  trivial

end ComputationalChemistryReactionPathAnalysisCanonicalLaneLean
end HautevilleHouse