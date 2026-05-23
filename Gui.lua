-- MaoScripts GUI Example
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Layout = Instance.new("UIListLayout")
local Padding = Instance.new("UIPadding")
local Button = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")

-- Main GUI setup
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Frame (main window)
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.5, -175, 0.5, -150)
Frame.Size = UDim2.new(0, 300, 0, 0) -- height is auto
Frame.AutomaticSize = Enum.AutomaticSize.Y -- auto height!
Frame.Active = true
Frame.Draggable = true

-- Layout (auto stacks children)
Layout.Parent = Frame
Layout.SortOrder = Enum.SortOrder.LayoutOrder
Layout.Padding = UDim.new(0, 5)

-- Padding inside frame
Padding.Parent = Frame
Padding.PaddingTop = UDim.new(0, 5)
Padding.PaddingBottom = UDim.new(0, 5)
Padding.PaddingLeft = UDim.new(0, 10)
Padding.PaddingRight = UDim.new(0, 10)

-- Title
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Title.Size = UDim2.new(1, 0, 0, 30) -- only height matters
Title.Text = "MaoScripts"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14
Title.LayoutOrder = 1

-- Button
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
Button.Size = UDim2.new(1, 0, 0, 35) -- full width, fixed height
Button.Text = "Run Script"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.Gotham
Button.TextSize = 13
Button.LayoutOrder = 2

-- Close Button
CloseButton.Parent = Frame
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.Size = UDim2.new(1, 0, 0, 35)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.Gotham
CloseButton.TextSize = 13
CloseButton.LayoutOrder = 3

-- Button Functions
Button.MouseButton1Click:Connect(function()
    print("Script ran!")
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
