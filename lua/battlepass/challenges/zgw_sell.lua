local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Sell Gold")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Make :goal more from gold washing")
CHALLENGE:SetFinishedDesc("Make :goal from gold washing")
CHALLENGE:SetID("zgw_sell")
CHALLENGE:AddHook("zgw_PostSell", function(self, ply, _ply, Money)
  if IsValid(ply) and IsValid(_ply) and ply == _ply then
    self:AddProgress(Money) -- money received from selling gold
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)