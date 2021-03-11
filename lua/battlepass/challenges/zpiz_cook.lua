local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Cook Pizza")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Make :goal more pizzas")
CHALLENGE:SetFinishedDesc("Make :goal pizzas")
CHALLENGE:SetID("zpiz_cook")
CHALLENGE:AddHook("zpiz_OnPizzaReady", function(self, ply, pizza, pizzaowner, pizzaID, oven)
    if IsValid(pizzaowner) and ply == pizzaowner then
        self:AddProgress(1)
        self:NetworkProgress()
    end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)