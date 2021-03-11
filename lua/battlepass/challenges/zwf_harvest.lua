local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Harvest Weed")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Harvest :goal more weed")
CHALLENGE:SetFinishedDesc("Harvest :goal weed")
CHALLENGE:SetID("zwf_harvest")
CHALLENGE:AddHook("zwf_OnPlantHarvest", function(self, ply, flowerpot, _ply)
    if IsValid(ply) and IsValid(_ply) and ply == _ply then
        self:AddProgress(1)
        self:NetworkProgress()
    end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)