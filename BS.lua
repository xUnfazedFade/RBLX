local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleBar = Instance.new("Frame")
local ButtonContainer = Instance.new("Frame")
local Credits = Instance.new("TextLabel")

-- Setup Main Frame
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 250, 0, 150) 
MainFrame.Position = UDim2.new(0.5, -125, 0.5, -75)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Darker background
MainFrame.BorderSizePixel = 0

-- Setup Title Bar
TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.Size = UDim2.new(1, 0, 0, 30)
TitleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Slightly darker title bar
TitleBar.BorderSizePixel = 0

-- Setup Button Container
ButtonContainer.Name = "ButtonContainer"
ButtonContainer.Parent = MainFrame
ButtonContainer.Size = UDim2.new(1, 0, 1, -50)
ButtonContainer.Position = UDim2.new(0, 0, 0, 30)
ButtonContainer.BackgroundTransparency = 1

-- Setup Credits
Credits.Name = "Credits"
Credits.Parent = MainFrame
Credits.Size = UDim2.new(1, 0, 0, 20)
Credits.Position = UDim2.new(0, 0, 1, -30)
Credits.BackgroundTransparency = 1
Credits.Text = "YT: Xploit_RBLX"
Credits.TextColor3 = Color3.fromRGB(150, 150, 150) -- Lighter grey for credits
Credits.Font = Enum.Font.Gotham
Credits.TextSize = 10
Credits.TextXAlignment = Enum.TextXAlignment.Center

-- Title Text
local Title = Instance.new("TextLabel")
Title.Parent = TitleBar
Title.Size = UDim2.new(1, -70, 1, 0)
Title.Position = UDim2.new(0, 10, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "Broken Bones IV OP GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Center

-- Control Buttons (Minimize/Close)
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Parent = TitleBar
MinimizeButton.Position = UDim2.new(1, -60, 0, 0)
MinimizeButton.Size = UDim2.new(0, 30, 1, 0)
MinimizeButton.BackgroundTransparency = 1
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.TextSize = 20

local CloseButton = Instance.new("TextButton")
CloseButton.Parent = TitleBar
CloseButton.Position = UDim2.new(1, -30, 0, 0)
CloseButton.Size = UDim2.new(0, 30, 1, 0)
CloseButton.BackgroundTransparency = 1
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 14

-- Function Button Creation
local function createFunctionButton(text, position)
    local Button = Instance.new("TextButton")
    Button.Parent = ButtonContainer
    Button.Size = UDim2.new(1, -20, 0, 25)
    Button.Position = position
    Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Slightly darker button color
    Button.BorderSizePixel = 0
    
    -- Add rounded corners
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner.Parent = Button
    
    -- Center text
    local ButtonText = Instance.new("TextLabel")
    ButtonText.Parent = Button
    ButtonText.Size = UDim2.new(1, 0, 1, 0)
    ButtonText.BackgroundTransparency = 1
    ButtonText.Text = text
    ButtonText.TextColor3 = Color3.fromRGB(255, 255, 255)
    ButtonText.Font = Enum.Font.Gotham
    ButtonText.TextSize = 14
    ButtonText.TextXAlignment = Enum.TextXAlignment.Center
    
    Button.MouseEnter:Connect(function()
        Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Darker hover color
    end)
    Button.MouseLeave:Connect(function()
        Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    end)
    
    return Button, ButtonText
end

-- Create Function Buttons
local ExecuteButton, ExecuteButtonText = createFunctionButton("Infinite Money", UDim2.new(0, 10, 0, 10))
local GrantButton, GrantButtonText = createFunctionButton("GRANT", UDim2.new(0, 10, 0, 40)) 

-- Button Functionality
ExecuteButton.MouseButton1Click:Connect(function()
    local args = {
        [1] = "money",
        [2] = 1e208 -- You can adjust this value as needed
    }
    game:GetService("ReplicatedStorage").Functions.UpdateStat:InvokeServer(unpack(args))
end)

GrantButton.MouseButton1Click:Connect(function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId) 
end)

-- Dragging
local UserInputService = game:GetService("UserInputService")
local dragging
local dragStart
local startPos

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
    end
end)

TitleBar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Minimize and Close Buttons
MinimizeButton.MouseButton1Click:Connect(function()
    ButtonContainer.Visible = not ButtonContainer.Visible
    Credits.Visible = not Credits.Visible 
    MainFrame.Size = ButtonContainer.Visible and UDim2.new(0, 250, 0, 150) or UDim2.new(0, 250, 0, 50) 
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
