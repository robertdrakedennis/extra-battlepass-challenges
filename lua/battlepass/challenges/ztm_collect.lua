local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Collect Trash")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Collect :goal more trash")
CHALLENGE:SetFinishedDesc("Collect :goal trash")
CHALLENGE:SetID("ztm_collect")
CHALLENGE:AddHook("ztm_OnTrashCollect", function(self, ply, _ply, trash)
    if IsValid(ply) and IsValid(_ply) and ply == _ply then
        self:AddProgress(trash)
        self:NetworkProgress()
    end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)