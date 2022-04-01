-- PersiaChanges
-- Author: Robbie
-- DateCreated: 7/11/2019 12:28:05 PM
--------------------------------------------------------------
function PersiaAddDummyPolicy(iPlayer, iX, iY)
    for iPlayerLoop = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
        local pPlayer = Players[iPlayerLoop]
        if (pPlayer:GetCivilizationType() == GameInfoTypes.CIVILIZATION_PERSIA) then
			if ((Map.GetPlot(iX, iY):GetPlotCity()) == pPlayer:GetCapitalCity()) then
				if (not pPlayer:HasPolicy(GameInfoTypes.DUMMY_POLICY_PERSIA)) then
					pPlayer:SetNumFreePolicies(1)
					pPlayer:SetNumFreePolicies(0)
					pPlayer:SetHasPolicy(GameInfoTypes.DUMMY_POLICY_PERSIA, true)
				end
			end
		end
    end
end
GameEvents.PlayerCityFounded.Add(PersiaAddDummyPolicy)