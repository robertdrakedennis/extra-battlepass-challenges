local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Make Smoothies")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Make :goal more smoothies")
CHALLENGE:SetFinishedDesc("Made :goal smoothies")
CHALLENGE:SetID("smoothie_make")
CHALLENGE:AddHook("zfs_OnSmoothieMade", function(self, ply, _ply, Smoothie, SmoothieID)
  if IsValid(ply) and IsValid(_ply) and ply == _ply then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)