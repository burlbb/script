-- Settings
name = "0Zer0_0"
stat = "Ban"
value = false

-- Variable
local player = game.Players.LocalPlayer

-- Change
function change(value, path)
    game.ReplicatedStorage.SaveCD:FireServer(value, path)
end

-- Skeet
for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Folder") and v:FindFirstChild("PlayerData") then
        change(value, v.PlayerData[name][stat])
    end
end