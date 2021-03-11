local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Sell Trash")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Sell :goal more trash")
CHALLENGE:SetFinishedDesc("Sell :goal trash")
CHALLENGE:SetID("ztm_sold")
CHALLENGE:AddHook("ztm_OnTrashBlockSold", function(self, ply, _ply, buyermachine, earning)
    if IsValid(ply) and IsValid(_ply) and ply == _ply then
        self:AddProgress(earning)
        self:NetworkProgress()
    end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)