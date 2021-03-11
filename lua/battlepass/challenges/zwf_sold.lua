local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Sell Weed")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Sell :goal more weed")
CHALLENGE:SetFinishedDesc("Sell :goal weed")
CHALLENGE:SetID("zwf_sold")
CHALLENGE:AddHook("zwf_OnWeedSold", function(self, ply, _ply, npc, earning, weedblock_count)
    if IsValid(ply) and IsValid(_ply) and ply == _ply then
        self:AddProgress(earning)
        self:NetworkProgress()
    end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)