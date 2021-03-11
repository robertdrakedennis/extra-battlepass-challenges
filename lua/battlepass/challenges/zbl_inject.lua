local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Inject Players")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Inject :goal more players")
CHALLENGE:SetFinishedDesc("Inject :goal players")
CHALLENGE:SetID("zbl_inject")
CHALLENGE:AddHook("zbl_OnPlayerInject", function(self, ply, target, vaccine_id, inflictor)
  local _ply = inflictor
  
  if IsValid(ply) and IsValid(_ply) and ply == _ply then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)