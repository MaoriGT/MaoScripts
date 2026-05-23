-- MaoScripts GUI Example
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Button = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")

-- Main GUI setup
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Frame (main window)
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.5, -175, 0.5, -150)
Frame.Size = UDim2.new(0, 600, 0, 600)
Frame.Active = true
Frame.Draggable = true

-- Title
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "MaoScripts"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14

-- Button
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
Button.Position = UDim2.new(0.1, 0, 0.35, 0)
Button.Size = UDim2.new(0.8, 0, 0, 35)
Button.Text = "Run Script"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.Gotham
Button.TextSize = 13

-- Close Button
CloseButton.Parent = Frame
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.Position = UDim2.new(0.1, 0, 0.7, 0)
CloseButton.Size = UDim2.new(0.8, 0, 0, 30)
CloseButton.Text = "Close"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.Gotham
CloseButton.TextSize = 13

-- Button Functions
Button.MouseButton1Click:Connect(function()
    print("Script ran!")
    -- put your script logic here
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
