local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Sell Pizza")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Sell :goal more pizzas")
CHALLENGE:SetFinishedDesc("Sell :goal pizzas")
CHALLENGE:SetID("zpiz_sold")
CHALLENGE:AddHook("zpiz_OnPizzaSold", function(self, ply, _ply, pizzaID)
    if IsValid(ply) and IsValid(_ply) and ply == _ply then
        self:AddProgress(1)
        self:NetworkProgress()
    end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)