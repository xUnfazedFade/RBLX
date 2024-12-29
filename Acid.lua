--[[
    WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]

-- Load the Wizard UI Library
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

-- Create the main window and section
local Window = Library:NewWindow("The Floor is Acid")
local Main = Window:NewSection("Main")

-- Populate descriptions from ReplicatedStorage
local descriptions = {
    "Blocky Snowman",
    "Beauty",
    "Denis",
    -- Add other existing morphs here
}
for _, v in pairs(game:GetService("ReplicatedStorage").BSG.StoredHumanoidDescriptions:GetDescendants()) do
    if v:IsA("HumanoidDescription") then
        table.insert(descriptions, v.Name)
    end
end

-- Create GUI elements
Main:CreateTextbox("Get Spins", function(text)
    for i = 1, tonumber(text) do
        game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("ClaimPlaytimeReward - RemoteEvent"):FireServer(3)
    end
end)

Main:CreateTextbox("Get XPs", function(text)
    game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("AwardXp - RemoteEvent"):FireServer(tonumber(text))
end)

Main:CreateTextbox("Get Cash", function(text)
    game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("AwardSpinCash - RemoteEvent"):FireServer(tonumber(text))
end)

-- Add Get All Items button
Main:CreateButton("Get All Items", function()
    for _, v in pairs(workspace.Items:GetChildren()) do
        game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("PurchaseItem - RemoteEvent"):FireServer(v.Name)
    end
    game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("AwardSpinCash - RemoteEvent"):FireServer(7285000)
end)

-- Add dropdown for Morph with specific options
Main:CreateDropdown("Morph", descriptions, 1, function(text)
    game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("EquipMorph - RemoteEvent"):FireServer(text)
end)

-- Add dropdown for Unlock Pet
Main:CreateDropdown("Unlock Pet", { "Unlock Dragon", "Unlock Unicorn" }, 1, function(text)
    if text == "Unlock Dragon" then
        local args = { [1] = 17 }
        game:GetService("ReplicatedStorage").Honeypot.Internal.RemoteStorage:FindFirstChild("BuyPet - RemoteEvent"):FireServer(unpack(args))
    elseif text == "Unlock Unicorn" then
        local args = { [1] = 16 }
        game:GetService("ReplicatedStorage").Honeypot.Internal.RemoteStorage:FindFirstChild("BuyPet - RemoteEvent"):FireServer(unpack(args))
    end
end)

-- Add Reset Morph button
Main:CreateButton("Reset Morph", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("EquipMorph - RemoteEvent"):FireServer()
end)

-- Add Teleport to Pro Servers button
Main:CreateButton("Teleport to Pro Servers", function()
    game:GetService("ReplicatedStorage").Honeypot.Internal.RemoteStorage["TeleportToProServer - RemoteEvent"]:FireServer()
end)

-- Add Infinite Jump button
Main:CreateButton("Infinite Jump", function()
    game:GetService("UserInputService").JumpRequest:Connect(function()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end)
end)

-- Add credits to the GUI
local Credits = Window:NewSection("YT: Xploiter_RBLX")

-- Apply fonts and styles for better aesthetics
local function applyStyles()
    for _, v in pairs(game.CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Text == "The Floor is Acid" then
            v.Font = Enum.Font.Bangers  -- Apply Bangers font to the title
            v.TextSize = 20  -- Make the title font size smaller
        elseif v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
            v.Font = Enum.Font.FredokaOne
        end
    end
end

applyStyles()
