local player = game.Players.LocalPlayer
local npc = game:GetService("Workspace").NPC.Kuru

if npc then
    local humanoidRootPart = npc:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        player.Character:MoveTo(humanoidRootPart.Position)
        local Found = nil
        for _, v in pairs(npc:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                Found = v
                break
            end
        end
        if fireproximityprompt then
            if Found == nil then
                print("Not Found")
                return
            end
            for i = 1, 2 do
                fireproximityprompt(Found)
                task.wait(0.3)
            end
        else
            warn("Exploit doesn't support")
        end
    end
end

wait(1)

if game:GetService("Workspace").Lives:FindFirstChild("Criminal31")
    and game:GetService("Workspace").Lives:FindFirstChild("Criminal32")
    and game:GetService("Workspace").Lives:FindFirstChild("Criminal33")
    and game:GetService("Workspace").Lives:FindFirstChild("Criminal34")
    and game:GetService("Workspace").Lives:FindFirstChild("Criminal35") then

    while true do
        -- Teleport player to Criminal31
        game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Lives.Criminal31.Torso.Position)
        wait(0.5) -- Wait for 1 second before teleporting again

        -- Teleport player to Criminal32
        game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Lives.Criminal32.Torso.Position)
        wait(0.5) -- Wait for 1 second before teleporting again

        -- Teleport player to Criminal33
        game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Lives.Criminal33.Torso.Position)
        wait(0.5) -- Wait for 1 second before teleporting again

        -- Teleport player to Criminal34
        game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Lives.Criminal34.Torso.Position)
        wait(0.5) -- Wait for 1 second before teleporting again

        -- Teleport player to Criminal35
        game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Lives.Criminal35.Torso.Position)
        wait(0.5) -- Wait for 1 second before looping back to Criminal31
    end
else
    print("Criminal NPCs not found, looped teleportation cancelled.")
end
