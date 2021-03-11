local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Make Meth")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Make :goal more meth")
CHALLENGE:SetFinishedDesc("Made :goal meth")
CHALLENGE:SetID("zmlab_make")
CHALLENGE:AddHook("zmlab_OnMethMade", function(self, ply, _ply, frezzingTray, methEnt)

    local amount = methEnt:GetMethAmount()

    if IsValid(ply) and IsValid(_ply) and ply == _ply then
        self:AddProgress(amount)
        self:NetworkProgress()
    end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)