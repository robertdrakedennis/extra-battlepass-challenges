local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Eat Pizza")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Eat :goal more pizzas")
CHALLENGE:SetFinishedDesc("Eat :goal pizzas")
CHALLENGE:SetID("zpiz_eaten")
CHALLENGE:AddHook("zpiz_OnPizzaEaten", function(self, ply, _ply, pizzaID)
    if IsValid(ply) and IsValid(_ply) and ply == _ply then
        self:AddProgress(1)
        self:NetworkProgress()
    end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)