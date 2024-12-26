local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create the GUI Window with a smaller size
local Window = OrionLib:MakeWindow({
    Name = "Strong Simulator OP GUI by: (Xploit_RBLX)",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "StrongSimConfig",
    IntroEnabled = false -- Disable intro to save space
})

-- Create the Main Tab
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998", -- Keep the icon minimal
    PremiumOnly = false
})

-- Infinite Gems Button
MainTab:AddButton({
    Name = "Infinite Gems",
    Callback = function()
        local args = {
            [1] = "S_Eggs_Open",
            [2] = {
                [1] = "Farm",
                [2] = -math.huge
            }
        }
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer(unpack(args))
        print("Infinite Gems activated")
    end
})

-- Reload Gems Button
MainTab:AddButton({
    Name = "Reload Gems",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        local Player = game.Players.LocalPlayer
        TeleportService:Teleport(game.PlaceId, Player)
        print("Reloading server...")
    end
})

-- Function to handle toggles
local function FastLoop(remoteArgs)
    while task.wait(0.1) and getgenv().AutoRunning do
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer(unpack(remoteArgs))
    end
end

-- Auto Click Toggle
MainTab:AddToggle({
    Name = "Auto Click",
    Default = false,
    Callback = function(Value)
        getgenv().AutoRunning = Value
        if Value then
            local args = {
                [1] = "S_Tools_Activate",
                [2] = {}
            }
            FastLoop(args)
        end
    end
})

-- Auto Rebirth Toggle
MainTab:AddToggle({
    Name = "Auto Rebirth",
    Default = false,
    Callback = function(Value)
        getgenv().AutoRunning = Value
        if Value then
            local args = {
                [1] = "S_Rebirth_Request",
                [2] = {}
            }
            FastLoop(args)
        end
    end
})

-- Buy Best Eggs (25k) Toggle
MainTab:AddToggle({
    Name = "Buy Best Eggs (25k)",
    Default = false,
    Callback = function(Value)
        getgenv().AutoRunning = Value
        if Value then
            local args = {
                [1] = "S_Eggs_Open",
                [2] = {
                    [1] = "Farm",
                    [2] = 1
                }
            }
            FastLoop(args)
        end
    end
})

-- Finish and initialize the GUI
OrionLib:Init()
