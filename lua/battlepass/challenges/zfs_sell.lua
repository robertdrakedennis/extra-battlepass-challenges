local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Sell Smoothies")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Sell :goal more smoothies")
CHALLENGE:SetFinishedDesc("Sell :goal smoothies")
CHALLENGE:SetID("smoothie_sell")
CHALLENGE:AddHook("zfs_OnSmoothieSold", function(self, ply, _ply, Price, Smoothie, SmoothieID)
  if IsValid(ply) and IsValid(_ply) and ply == _ply then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)