import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryReactionPathAnalysisCanonicalLaneLean

structure ReactionCoordinate where
  label : String
  energyProfile : List (Float × Float)  -- (coordinate, energy)
  stationaryPoints : List (Float × String)  -- (coordinate, type)

definition BridgeEnergyProfile (rc : ReactionCoordinate) : Prop :=
  rc.stationaryPoints.any (fun (_, typ) => typ = "transition_state")

structure AdmissibleReactionClass extends AdmissibleClass where
  reactionCoordinate : ReactionCoordinate
  bridgeValid : BridgeEnergyProfile reactionCoordinate
  gateWitnessEnergetic : Prop


theorem bridge_from_reaction_coordinate (A : AdmissibleReactionClass) : BridgeEnergyProfile A.reactionCoordinate :=
  A.bridgeValid

end ComputationalChemistryReactionPathAnalysisCanonicalLaneLean
end HautevilleHouse