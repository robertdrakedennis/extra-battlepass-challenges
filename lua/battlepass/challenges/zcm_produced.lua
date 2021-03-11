local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Produce Fireworks")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Produce :goal more fireworks")
CHALLENGE:SetFinishedDesc("Produce :goal fireworks")
CHALLENGE:SetID("zcm_produced")
CHALLENGE:AddHook("zcm_OnFireworkProduced", function(self, ply, _ply)
  if IsValid(ply) and IsValid(_ply) and ply == _ply then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)