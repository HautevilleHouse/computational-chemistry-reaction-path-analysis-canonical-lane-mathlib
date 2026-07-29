import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryReactionPathAnalysisCanonicalLaneLean

structure RateConstantParameters where
  preExponential : Float
  activationEnergy : Float
  temperature : Float

definition ArrheniusRate (params : RateConstantParameters) : Float :=
  params.preExponential * exp (-params.activationEnergy / (8.314 * params.temperature))

definition EyringRate (params : RateConstantParameters) : Float :=
  (params.temperature * 1.381e-23 / 6.626e-34) * exp (-params.activationEnergy / (8.314 * params.temperature))

theorem ratePositive (params : RateConstantParameters) (h : params.preExponential > 0) : ArrheniusRate params > 0 := by
  nlinarith

end ComputationalChemistryReactionPathAnalysisCanonicalLaneLean
end HautevilleHouse