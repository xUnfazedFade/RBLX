local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create the GUI Window
local Window = OrionLib:MakeWindow({
    Name = "Pull-Up Legends OP GUI (by:Xploiter_RBLX)",
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "PullUpLegendsConfig"
})

-- Main Tab
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483362458",
    PremiumOnly = false
})

-- Notify the user
OrionLib:MakeNotification({
    Name = "Follow me please",
    Content = "My script blox moma1133222",
    Image = "rbxassetid://4483362458",
    Time = 6.5
})

-- Remotes
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local claimRewardRemote = ReplicatedStorage.Remotes:WaitForChild("ClaimReward")
local rebirthRemote = ReplicatedStorage.Remotes:WaitForChild("Rebirth")
local claimDailyRemote = ReplicatedStorage.DailyEvents:WaitForChild("ClaimDaily")

-- Power Input
MainTab:AddTextbox({
    Name = "Give Power (Don't go too high!)",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        local args = {
            [1] = "Power",
            [2] = tonumber(Value) or 300000000
        }
        claimRewardRemote:FireServer(unpack(args))
        print("Power set to:", args[2])
    end
})

-- Rebirth Input
MainTab:AddTextbox({
    Name = "Give Rebirths (Max 1M)",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        local args = {
            [1] = tonumber(Value) or 0
        }
        rebirthRemote:InvokeServer(unpack(args))
        print("Rebirths set to:", args[1])
    end
})

-- Spam Claim Daily Toggle
local isToggled = false
MainTab:AddToggle({
    Name = "Spam Claim Daily (OP Pets)",
    Default = false,
    Callback = function(Value)
        isToggled = Value
        if isToggled then
            print("Spam Claim Daily ON")
            coroutine.wrap(function()
                while isToggled do
                    claimDailyRemote:FireServer()
                    task.wait(0.1)
                end
            end)()
        else
            print("Spam Claim Daily OFF")
        end
    end
})

-- Teleports Tab
local TeleportsTab = Window:MakeTab({
    Name = "Teleports",
    Icon = "rbxassetid://4483362458",
    PremiumOnly = false
})

local localPlayer = game.Players.LocalPlayer

-- Add teleport buttons
local function createTeleportButton(name, cframe)
    TeleportsTab:AddButton({
        Name = name,
        Callback = function()
            if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                localPlayer.Character.HumanoidRootPart.CFrame = cframe
                print("Teleported to:", cframe)
            else
                print("Character not found or not loaded.")
            end
        end
    })
end

createTeleportButton("World 1 King of the Hill", CFrame.new(998, 97, 13))
createTeleportButton("World 2 King of the Hill", CFrame.new(-150, 435, -15985))
createTeleportButton("World 3 King of the Hill", CFrame.new(8386, 6320, 142))
createTeleportButton("World 4 King of the Hill", CFrame.new(-7834, 5623, -795))
createTeleportButton("World 5 King of the Hill", CFrame.new(-3462, 723, -264))

-- Add Credits Section
local CreditsTab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483362458",
    PremiumOnly = false
})

CreditsTab:AddParagraph("Credits", "GUI by: Xploiter_RBLX\nOriginal Script by: moma1133222")

-- Finish the GUI setup
OrionLib:Init()
