
-- Boot the Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create a Window
local Window = OrionLib:MakeWindow({
    Name = "THE BEST SUPERMARKET SIM GUI (by: Xploit_RBLX)",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionConfig"
})

-- Create a Tab
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Create a Section
local Section = Tab:AddSection({
    Name = "Actions"
})

-- Button to Unlock Porter Gamepass
Tab:AddButton({
    Name = "Unlock Porter Gamepass",
    Callback = function()
        local args = {
            [1] = "Porter",
            [2] = 5
        }
        game:GetService("ReplicatedStorage").Events.Goods.GamePassRE:FireServer(unpack(args))
    end
})

-- Button to Unlock Cashier Quick-Checkout Gamepass
Tab:AddButton({
    Name = "Unlock Cashier Quick-Checkout Gamepass",
    Callback = function()
        local args = {
            [1] = "Quick Check-out",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Events.Goods.GamePassRE:FireServer(unpack(args))
    end
})

-- Button to Unlock Cashier Gamepass
Tab:AddButton({
    Name = "Unlock Cashier Gamepass",
    Callback = function()
        local args = {
            [1] = "Cashier",
            [2] = 28
        }
        game:GetService("ReplicatedStorage").Events.Goods.GamePassRE:FireServer(unpack(args))
    end
})

-- Button to Add Unlimited Experience
Tab:AddButton({
    Name = "Unlimited EXP",
    Callback = function()
        local args = {
            [1] = 10000000000000
        }
        game:GetService("ReplicatedStorage").Events.Exp.ChangeExpRE:FireServer(unpack(args))
    end
})

-- Button to Add Unlimited Gold
Tab:AddButton({
    Name = "Unlimited Cash",
    Callback = function()
        local args = {
            [1] = "ChangeGold",
            [2] = math.huge,
            [3] = false
        }
        game:GetService("ReplicatedStorage").Events.Gold.ChangeGoldRF:InvokeServer(unpack(args))
    end
})

-- Initialize the GUI
OrionLib:Init()
