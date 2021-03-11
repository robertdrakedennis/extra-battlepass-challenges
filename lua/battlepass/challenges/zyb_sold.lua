local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Sell Alcohol")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Sell :goal more alcohol")
CHALLENGE:SetFinishedDesc("Sell :goal alcohol")
CHALLENGE:SetID("zyb_sold")
CHALLENGE:AddHook("zyb_OnMoonshineSold", function(self, ply, _ply, npc, earning, jarCount)
    if IsValid(ply) and IsValid(_ply) and ply == _ply then
        self:AddProgress(earning)
        self:NetworkProgress()
    end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)