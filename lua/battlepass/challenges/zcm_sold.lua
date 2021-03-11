local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Sell Fireworks")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Sell :goal more fireworks")
CHALLENGE:SetFinishedDesc("Sell :goal fireworks")
CHALLENGE:SetID("zcm_sold")
CHALLENGE:AddHook("zcm_OnFireworkSold", function(self, ply, _ply, earning, fireworkcount)
  if IsValid(ply) and IsValid(_ply) and ply == _ply then
    self:AddProgress(fireworkcount) -- fireworkcount
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)