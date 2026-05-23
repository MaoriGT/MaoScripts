local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local Sidebar = Instance.new("Frame")
local ContentArea = Instance.new("Frame")
local TooltipLabel = Instance.new("TextLabel")

-- ScreenGui
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main Frame
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
MainFrame.Size = UDim2.new(0, 400, 0, 300)
MainFrame.Active = true
MainFrame.Draggable = true

-- Top Bar
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TopBar.Size = UDim2.new(1, 0, 0, 35)

-- Title
TitleLabel.Parent = TopBar
TitleLabel.BackgroundTransparency = 1
TitleLabel.Size = UDim2.new(1, 0, 1, 0)
TitleLabel.Text = "MaoScripts"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextSize = 15

-- Sidebar
Sidebar.Parent = MainFrame
Sidebar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Sidebar.Position = UDim2.new(0, 0, 0, 35)
Sidebar.Size = UDim2.new(0, 50, 1, -35)

-- Sidebar Layout
local SidebarLayout = Instance.new("UIListLayout")
SidebarLayout.Parent = Sidebar
SidebarLayout.SortOrder = Enum.SortOrder.LayoutOrder
SidebarLayout.Padding = UDim.new(0, 5)
SidebarLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
SidebarLayout.VerticalAlignment = Enum.VerticalAlignment.Top

-- Content Area
ContentArea.Parent = MainFrame
ContentArea.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ContentArea.Position = UDim2.new(0, 50, 0, 35)
ContentArea.Size = UDim2.new(1, -50, 1, -35)

-- Tooltip (name popup when tab clicked)
TooltipLabel.Parent = MainFrame
TooltipLabel.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
TooltipLabel.BackgroundTransparency = 0.3
TooltipLabel.Position = UDim2.new(0, 55, 0, 40)
TooltipLabel.Size = UDim2.new(0, 100, 0, 25)
TooltipLabel.Text = ""
TooltipLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TooltipLabel.Font = Enum.Font.Gotham
TooltipLabel.TextSize = 12
TooltipLabel.Visible = false
TooltipLabel.ZIndex = 10

-- Tab data
local tabs = {
    {icon = "⚔️", name = "Combat", content = "Combat scripts here"},
    {icon = "🛡", name = "Defense", content = "Defense scripts here"},
    {icon = "⚙️", name = "Settings", content = "Settings here"},
}

-- Content label (shows tab content)
local ContentLabel = Instance.new("TextLabel")
ContentLabel.Parent = ContentArea
ContentLabel.BackgroundTransparency = 1
ContentLabel.Size = UDim2.new(1, 0, 1, 0)
ContentLabel.Text = "Select a tab"
ContentLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
ContentLabel.Font = Enum.Font.Gotham
ContentLabel.TextSize = 14

local tooltipActive = false

-- Create tab buttons
for i, tab in ipairs(tabs) do
    local TabButton = Instance.new("TextButton")
    TabButton.Parent = Sidebar
    TabButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    TabButton.Size = UDim2.new(0, 40, 0, 40)
    TabButton.Text = tab.icon
    TabButton.TextSize = 20
    TabButton.Font = Enum.Font.Gotham
    TabButton.LayoutOrder = i

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner.Parent = TabButton

    TabButton.MouseEnter:Connect(function()
        TooltipLabel.Text = tab.name
        TooltipLabel.Visible = true
    end)

    TabButton.MouseLeave:Connect(function()
        TooltipLabel.Visible = false
    end)
    end)
end
