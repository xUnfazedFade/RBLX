-- Load the Orion Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create the main window with optimized settings for mobile
local Window = OrionLib:MakeWindow({
    Name = "+1 Block per Click! GUI by: Xploiter_RBLX",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionGUI",
    IntroEnabled = false, -- Disable intro for quicker loading
    IntroText = "",
    Icon = "",
    CloseCallback = function()
        print("GUI closed")
    end
})

-- Create the first tab
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Add a button for "Inf Wins"
Tab:AddButton({
    Name = "Inf Wins",
    Callback = function()
        local args = {
            [1] = "Pet",
            [2] = 1,
            [3] = -math.huge
        }
        game:GetService("ReplicatedStorage").Remotes.Server.HatchEggs:InvokeServer(unpack(args))
    end    
})

-- Add a button for "Max Upgrades"
Tab:AddButton({
    Name = "Max Upgrades",
    Callback = function()
        local function fireRemote(boostName, times)
            for _ = 1, times do
                local args = { boostName }
                game:GetService("ReplicatedStorage").Remotes.Server.Upgrade:FireServer(unpack(args))
            end
        end
        fireRemote("WinBoost", 100)
        fireRemote("LuckBoost", 100)
        fireRemote("StrengthBoost", 100)
    end    
})

-- Add a toggle for "Buy Best Egg"
local toggleActive = false
local loopConnection

Tab:AddToggle({
    Name = "Buy Best Egg",
    Default = false,
    Callback = function(Value)
        toggleActive = Value
        if toggleActive then
            -- Start a fast loop
            loopConnection = game:GetService("RunService").RenderStepped:Connect(function()
                local args = {
                    [1] = "Pet",
                    [2] = 27,
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.Server.HatchEggs:InvokeServer(unpack(args))
            end)
        else
            -- Stop the loop
            if loopConnection then
                loopConnection:Disconnect()
                loopConnection = nil
            end
        end
    end    
})

-- Add a notification for mobile mode
OrionLib:MakeNotification({
    Name = "Mobile Mode",
    Content = "The GUI is now draggable and optimized for mobile devices.",
    Time = 5
})

-- Initialize the GUI
OrionLib:Init()
