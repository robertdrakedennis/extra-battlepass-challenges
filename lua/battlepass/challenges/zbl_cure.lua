local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Cure Players")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Cure :goal more players")
CHALLENGE:SetFinishedDesc("Cure :goal players")
CHALLENGE:SetID("zbl_cure")
CHALLENGE:AddHook("zbl_OnPlayerCurePlayer", function(self, ply, target, vaccine_id, inflictor)
  local _ply = inflictor
  
  if IsValid(ply) and IsValid(_ply) and ply == _ply then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)