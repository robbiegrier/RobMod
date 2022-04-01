-- TraitChansonDeGeste
-- Author: Robbie
-- DateCreated: 7/10/2019 5:51:29 PM
--------------------------------------------------------------
function FranksAddDummyPolicy(iPlayer, iX, iY)
    for iPlayerLoop = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
        local pPlayer = Players[iPlayerLoop]
        if (pPlayer:GetCivilizationType() == GameInfoTypes.CIVILIZATION_FRANKS) then
			if ((Map.GetPlot(iX, iY):GetPlotCity()) == pPlayer:GetCapitalCity()) then
				if (not pPlayer:HasPolicy(GameInfoTypes.DUMMY_POLICY_FRANKS)) then
					pPlayer:SetNumFreePolicies(1)
					pPlayer:SetNumFreePolicies(0)
					pPlayer:SetHasPolicy(GameInfoTypes.DUMMY_POLICY_FRANKS, true)
				end
			end
		end
    end
end
GameEvents.PlayerCityFounded.Add(FranksAddDummyPolicy)