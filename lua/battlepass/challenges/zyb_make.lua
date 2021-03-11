local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Make Alcohol")
CHALLENGE:SetIcon("battlepass/challenges/quest.png")
CHALLENGE:SetProgressDesc("Make :goal more alcohol")
CHALLENGE:SetFinishedDesc("Make :goal alcohol")
CHALLENGE:SetID("zyb_make")
CHALLENGE:AddHook("zyb_OnMoonshineProduced", function(self, ply, condenser)
    if IsValid(condenser) then 
        local owner = zyb.f.GetOwner(condenser)

        if IsValid(owner) and ply == owner then
            self:AddProgress(1)
            self:NetworkProgress()
        end
    end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)