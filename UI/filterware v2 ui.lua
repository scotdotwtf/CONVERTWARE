local function CMSG(text)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = text,
        Font = Enum.Font.Gotham,
		Color = Color3.fromRGB(255, 255, 255),
		TextSize = 16,
	});
end

CMSG(" > Filterware V2 UI Remake by Colastee and Bug")
CMSG(" > SO SORRY, couldnt get cmsg to work with buttons (please check console for credit)")
CMSG("\n[press esc and click the box saying 'CWare']")

_G.Icon = "https://i.ibb.co/M98kfxh/cvware2.png"
_G.Name = "CWare"

local ImageExp = syn and getsynasset or KRNL_LOADED and getcustomasset
local itemholder = game.CoreGui.RobloxGui.SettingsShield.SettingsShield.MenuContainer.HubBar
local pageview = game.CoreGui.RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame
local newTab = itemholder.RecordTab
local newtabText = newTab.Icon.Title
local newtabIcon = newTab.Icon
local Frame = Instance.new("ScrollingFrame")
local Layout = Instance.new("UIGridLayout")
local filename = game:GetService("HttpService"):GenerateGUID()
if isfolder("Icons") == true then
    delfolder("Icons")
end
if isfolder("rbxasset://Icons") == true then
    delfolder("rbxasset://Icons")
end
makefolder("Icons")
writefile("Icons\\"..filename..".png", game:HttpGet(_G.Icon))
Frame.Visible = false
Frame.Name = "CustomTab"
Frame.Parent = pageview
Frame.BackgroundTransparency = 1
Frame.Size = UDim2.new(1, 0, 0, 575)
Frame:ClearAllChildren()
Layout.Parent = Frame
Frame.CanvasSize = UDim2.new(0, 0, 2.25, 0)
Frame.BorderSizePixel = 0
Layout.SortOrder = Enum.SortOrder.LayoutOrder
Layout.CellSize = UDim2.new(0, 258, 0, 55)
newtabText.Text = _G.Name
newtabIcon.Image = ImageExp("Icons\\"..filename..".png")
game.RunService.Heartbeat:Connect(function()
        if pageview:FindFirstChild("Record") then
            for _, v in pairs(pageview.Record:GetChildren()) do
                if v.Name ~= "CustomTab" then
                    v:Destroy()
                end
            end
            Frame.Parent = pageview.Record
            if pageview.Record.Visible == true then
                Frame.Visible = true
            else
                Frame.Visible = false
            end
        end
    end
)
function button(name, code)
    local Button = Instance.new("ImageButton")
    local Text = Instance.new("TextLabel")
    Button.Name = "Button"
    Button.Parent = Frame
    Button.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
    Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Button.BorderSizePixel = 1
    Button.BackgroundTransparency = 1
    Button.AnchorPoint = Vector2.new(0.5,0.5)
    Button.Position = UDim2.new(0.5, 0, 0.5, 0)
    Button.Size = UDim2.new(0, 182, 0, 46)
    Button.ScaleType = "Slice"
    Button.SliceCenter = Rect.new(8, 6, 46, 44)
    Button.SliceScale = 1
    Button.TileSize = UDim2.new(1, 0, 1, 0)
    Button.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
    Button.HoverImage = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"
    Button.PressedImage = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"

    Text.Parent = Button
    Text.Text = name
    Text.Font = Enum.Font.SourceSansBold
    Text.TextWrapped = true
    Text.TextSize = 24
    Text.BackgroundTransparency = 1
    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text.Position = UDim2.new(0, 0, 0, 1)
    Text.Size = UDim2.new(1, 0, 1, -8)
    Text.Visible = true

    Button.MouseButton1Down:Connect(function()
        loadstring(code)()
    end)
end


function tlabel(text)
    local Text = Instance.new("TextLabel")
    
    Text.Parent = Frame
    Text.Text = text
    Text.Font = Enum.Font.SourceSansBold
    Text.TextWrapped = true
    Text.TextSize = 24
    Text.BackgroundTransparency = 1
    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text.Position = UDim2.new(0.5, 0, 0.5, 0)
    Text.Size = UDim2.new(1, 0, 0, 50)
    Text.Visible = true
end

function slider(name, path, default, multiplier)
    local SliderFrame = Instance.new("ImageButton")
    local SliderLabel = Instance.new("TextLabel")
    local Slider = Instance.new("ImageButton")
    local StepsContainer = Instance.new("Frame")
    local Step1 = Instance.new("ImageButton")
    local Step2 = Instance.new("ImageButton")
    local Step3 = Instance.new("ImageButton")
    local Step4 = Instance.new("ImageButton")
    local Step5 = Instance.new("ImageButton")
    local Step6 = Instance.new("ImageButton")
    local Step7 = Instance.new("ImageButton")
    local Step8 = Instance.new("ImageButton")
    local Step9 = Instance.new("ImageButton")
    local Step10 = Instance.new("ImageButton")
    local LeftButton = Instance.new("ImageButton")
    local LeftButton_2 = Instance.new("ImageLabel")
    local RightButton = Instance.new("ImageButton")
    local RightButton_2 = Instance.new("ImageLabel")

    SliderFrame.Name = "Slider"
    SliderFrame.Parent = Frame
    SliderFrame.Active = false
    SliderFrame.BackgroundTransparency = 1.000
    SliderFrame.BorderSizePixel = 0
    SliderFrame.LayoutOrder = 5
    SliderFrame.Position = UDim2.new(0, 0, 0, 250)
    SliderFrame.Selectable = false
    SliderFrame.Size = UDim2.new(1, 0, 0, 50)
    SliderFrame.ZIndex = 2
    SliderFrame.AutoButtonColor = false
    SliderFrame.Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png"
    SliderFrame.ImageColor3 = Color3.fromRGB(163, 162, 165)
    SliderFrame.ImageTransparency = 1.000
    SliderFrame.ScaleType = Enum.ScaleType.Slice
    SliderFrame.SliceCenter = Rect.new(2, 2, 18, 18)

    SliderLabel.Name = "Label"
    SliderLabel.Parent = SliderFrame
    SliderLabel.BackgroundTransparency = 1.000
    SliderLabel.Position = UDim2.new(0, 10, 0, 0)
    SliderLabel.Size = UDim2.new(0, 200, 1, 0)
    SliderLabel.ZIndex = 2
    SliderLabel.Font = Enum.Font.SourceSansBold
    SliderLabel.Text = name
    SliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    SliderLabel.TextSize = 24.000
    SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

    Slider.Name = "Slider"
    Slider.Parent = SliderFrame
    Slider.AnchorPoint = Vector2.new(1, 0.5)
    Slider.BackgroundTransparency = 1.000
    Slider.Position = UDim2.new(1, 0, 0.5, 0)
    Slider.Size = UDim2.new(0.600000024, 0, 0, 50)
    Slider.ZIndex = 2
    Slider.AutoButtonColor = false

    SliderFrame.MouseEnter:Connect(function()
        SliderFrame.ImageTransparency = 0.5
    end)

    SliderFrame.MouseLeave:Connect(function()
        SliderFrame.ImageTransparency = 1
    end)

    StepsContainer.Name = "StepsContainer"
    StepsContainer.Parent = Slider
    StepsContainer.AnchorPoint = Vector2.new(0.5, 0.5)
    StepsContainer.BackgroundTransparency = 1.000
    StepsContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
    StepsContainer.Size = UDim2.new(1, -100, 1, 0)

    Step1.Name = "Step1"
    Step1.Parent = StepsContainer
    Step1.Active = false
    Step1.AnchorPoint = Vector2.new(0, 0.5)
    Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step1.BackgroundTransparency = 0.360
    Step1.BorderSizePixel = 0
    Step1.Position = UDim2.new(0, 2, 0.5, 0)
    Step1.Selectable = false
    Step1.Size = UDim2.new(0.100000001, -4, 0.479999989, 0)
    Step1.ZIndex = 3
    Step1.AutoButtonColor = false
    Step1.ImageTransparency = 0.360

    Step2.Name = "Step2"
    Step2.Parent = StepsContainer
    Step2.Active = false
    Step2.AnchorPoint = Vector2.new(0, 0.5)
    Step2.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step2.BackgroundTransparency = 0.360
    Step2.BorderSizePixel = 0
    Step2.Position = UDim2.new(0.100000001, 2, 0.5, 0)
    Step2.Selectable = false
    Step2.Size = UDim2.new(0.100000001, -4, 0.479999989, 0)
    Step2.ZIndex = 3
    Step2.AutoButtonColor = false
    Step2.ImageTransparency = 0.360

    Step3.Name = "Step3"
    Step3.Parent = StepsContainer
    Step3.Active = false
    Step3.AnchorPoint = Vector2.new(0, 0.5)
    Step3.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step3.BackgroundTransparency = 0.360
    Step3.BorderSizePixel = 0
    Step3.Position = UDim2.new(0.200000003, 2, 0.5, 0)
    Step3.Selectable = false
    Step3.Size = UDim2.new(0.100000001, -4, 0.479999989, 0)
    Step3.ZIndex = 3
    Step3.AutoButtonColor = false
    Step3.ImageTransparency = 0.360

    Step4.Name = "Step4"
    Step4.Parent = StepsContainer
    Step4.Active = false
    Step4.AnchorPoint = Vector2.new(0, 0.5)
    Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step4.BackgroundTransparency = 0.360
    Step4.BorderSizePixel = 0
    Step4.Position = UDim2.new(0.300000012, 2, 0.5, 0)
    Step4.Selectable = false
    Step4.Size = UDim2.new(0.100000001, -4, 0.479999989, 0)
    Step4.ZIndex = 3
    Step4.AutoButtonColor = false
    Step4.ImageTransparency = 0.360

    Step5.Name = "Step5"
    Step5.Parent = StepsContainer
    Step5.Active = false
    Step5.AnchorPoint = Vector2.new(0, 0.5)
    Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step5.BackgroundTransparency = 0.360
    Step5.BorderSizePixel = 0
    Step5.Position = UDim2.new(0.400000006, 2, 0.5, 0)
    Step5.Selectable = false
    Step5.Size = UDim2.new(0.100000001, -4, 0.479999989, 0)
    Step5.ZIndex = 3
    Step5.AutoButtonColor = false
    Step5.ImageTransparency = 0.360

    Step6.Name = "Step6"
    Step6.Parent = StepsContainer
    Step6.Active = false
    Step6.AnchorPoint = Vector2.new(0, 0.5)
    Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step6.BackgroundTransparency = 0.360
    Step6.BorderSizePixel = 0
    Step6.Position = UDim2.new(0.5, 2, 0.5, 0)
    Step6.Selectable = false
    Step6.Size = UDim2.new(0.100000001, -4, 0.479999989, 0)
    Step6.ZIndex = 3
    Step6.AutoButtonColor = false
    Step6.ImageTransparency = 0.360

    Step7.Name = "Step7"
    Step7.Parent = StepsContainer
    Step7.Active = false
    Step7.AnchorPoint = Vector2.new(0, 0.5)
    Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step7.BackgroundTransparency = 0.360
    Step7.BorderSizePixel = 0
    Step7.Position = UDim2.new(0.600000024, 2, 0.5, 0)
    Step7.Selectable = false
    Step7.Size = UDim2.new(0.100000001, -4, 0.479999989, 0)
    Step7.ZIndex = 3
    Step7.AutoButtonColor = false
    Step7.ImageTransparency = 0.360

    Step8.Name = "Step8"
    Step8.Parent = StepsContainer
    Step8.Active = false
    Step8.AnchorPoint = Vector2.new(0, 0.5)
    Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step8.BackgroundTransparency = 0.360
    Step8.BorderSizePixel = 0
    Step8.Position = UDim2.new(0.699999988, 2, 0.5, 0)
    Step8.Selectable = false
    Step8.Size = UDim2.new(0.100000001, -4, 0.479999989, 0)
    Step8.ZIndex = 3
    Step8.AutoButtonColor = false
    Step8.ImageTransparency = 0.360

    Step9.Name = "Step9"
    Step9.Parent = StepsContainer
    Step9.Active = false
    Step9.AnchorPoint = Vector2.new(0, 0.5)
    Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step9.BackgroundTransparency = 0.360
    Step9.BorderSizePixel = 0
    Step9.Position = UDim2.new(0.800000012, 2, 0.5, 0)
    Step9.Selectable = false
    Step9.Size = UDim2.new(0.100000001, -4, 0.479999989, 0)
    Step9.ZIndex = 3
    Step9.AutoButtonColor = false
    Step9.ImageTransparency = 0.360

    Step10.Name = "Step10"
    Step10.Parent = StepsContainer
    Step10.Active = false
    Step10.AnchorPoint = Vector2.new(0, 0.5)
    Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step10.BackgroundTransparency = 0.360
    Step10.BorderSizePixel = 0
    Step10.Position = UDim2.new(0.899999976, 2, 0.5, 0)
    Step10.Selectable = false
    Step10.Size = UDim2.new(0.100000001, -4, 0.479999989, 0)
    Step10.ZIndex = 3
    Step10.AutoButtonColor = false
    Step10.ImageTransparency = 0.360

    local plrMouse = game.Players.LocalPlayer:GetMouse()
    
    local value = default

    LeftButton.Name = "LeftButton"
    LeftButton.Parent = Slider
    LeftButton.AnchorPoint = Vector2.new(0, 0.5)
    LeftButton.BackgroundTransparency = 1.000
    LeftButton.Position = UDim2.new(0, 0, 0.5, 0)
    LeftButton.Selectable = false
    LeftButton.Size = UDim2.new(0, 50, 0, 50)
    LeftButton.ZIndex = 3

    LeftButton_2.Name = "LeftButton"
    LeftButton_2.Parent = LeftButton
    LeftButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
    LeftButton_2.BackgroundTransparency = 1.000
    LeftButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    LeftButton_2.Size = UDim2.new(0, 30, 0, 30)
    LeftButton_2.ZIndex = 4
    LeftButton_2.Image = "rbxasset://textures/ui/Settings/Slider/Less.png"
    LeftButton_2.ImageColor3 = Color3.fromRGB(204, 204, 204)

    RightButton.Name = "RightButton"
    RightButton.Parent = Slider
    RightButton.AnchorPoint = Vector2.new(1, 0.5)
    RightButton.BackgroundTransparency = 1.000
    RightButton.Position = UDim2.new(1, 0, 0.5, 0)
    RightButton.Selectable = false
    RightButton.Size = UDim2.new(0, 50, 0, 50)
    RightButton.ZIndex = 3

    RightButton_2.Name = "RightButton"
    RightButton_2.Parent = RightButton
    RightButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
    RightButton_2.BackgroundTransparency = 1.000
    RightButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    RightButton_2.Size = UDim2.new(0, 30, 0, 30)
    RightButton_2.ZIndex = 4
    RightButton_2.Image = "rbxasset://textures/ui/Settings/Slider/More.png"
    RightButton_2.ImageColor3 = Color3.fromRGB(204, 204, 204)

    RightButton_2.MouseEnter:Connect(function()
    RightButton_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
    end)
    RightButton_2.MouseLeave:Connect(function()
    RightButton_2.ImageColor3 = Color3.fromRGB(204, 204, 204)
    end)

    LeftButton_2.MouseEnter:Connect(function()
    LeftButton_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
    end)
    LeftButton_2.MouseLeave:Connect(function()
    LeftButton_2.ImageColor3 = Color3.fromRGB(204, 204, 204)
    end)

    if value == 0 then
        RightButton_2.Visible=true;RightButton.Visible=true;LeftButton_2.Visible=false;LeftButton.Visible=false;Step10.BackgroundColor3=Color3.fromRGB(78,84,96)Step9.BackgroundColor3=Color3.fromRGB(78,84,96)Step8.BackgroundColor3=Color3.fromRGB(78,84,96)Step7.BackgroundColor3=Color3.fromRGB(78,84,96)Step6.BackgroundColor3=Color3.fromRGB(78,84,96)Step5.BackgroundColor3=Color3.fromRGB(78,84,96)Step4.BackgroundColor3=Color3.fromRGB(78,84,96)Step3.BackgroundColor3=Color3.fromRGB(78,84,96)Step2.BackgroundColor3=Color3.fromRGB(78,84,96)Step1.BackgroundColor3=Color3.fromRGB(78,84,96)
        loadstring(path.." = "..value*multiplier)()
    elseif value == 1 then
        RightButton_2.Visible=true;RightButton.Visible=true;LeftButton_2.Visible=true;LeftButton.Visible=true;Step10.BackgroundColor3=Color3.fromRGB(78,84,96)Step9.BackgroundColor3=Color3.fromRGB(78,84,96)Step8.BackgroundColor3=Color3.fromRGB(78,84,96)Step7.BackgroundColor3=Color3.fromRGB(78,84,96)Step6.BackgroundColor3=Color3.fromRGB(78,84,96)Step5.BackgroundColor3=Color3.fromRGB(78,84,96)Step4.BackgroundColor3=Color3.fromRGB(78,84,96)Step3.BackgroundColor3=Color3.fromRGB(78,84,96)Step2.BackgroundColor3=Color3.fromRGB(78,84,96)Step1.BackgroundColor3=Color3.fromRGB(0,162,255)
        loadstring(path.." = "..value*multiplier)()
    elseif value == 2 then
        RightButton_2.Visible=true;RightButton.Visible=true;LeftButton_2.Visible=true;LeftButton.Visible=true;Step10.BackgroundColor3=Color3.fromRGB(78,84,96)Step9.BackgroundColor3=Color3.fromRGB(78,84,96)Step8.BackgroundColor3=Color3.fromRGB(78,84,96)Step7.BackgroundColor3=Color3.fromRGB(78,84,96)Step6.BackgroundColor3=Color3.fromRGB(78,84,96)Step5.BackgroundColor3=Color3.fromRGB(78,84,96)Step4.BackgroundColor3=Color3.fromRGB(78,84,96)Step3.BackgroundColor3=Color3.fromRGB(78,84,96)Step2.BackgroundColor3=Color3.fromRGB(0,162,255)Step1.BackgroundColor3=Color3.fromRGB(0,162,255)
        loadstring(path.." = "..value*multiplier)()
    elseif value == 3 then
        RightButton_2.Visible=true;RightButton.Visible=true;LeftButton_2.Visible=true;LeftButton.Visible=true;Step10.BackgroundColor3=Color3.fromRGB(78,84,96)Step9.BackgroundColor3=Color3.fromRGB(78,84,96)Step8.BackgroundColor3=Color3.fromRGB(78,84,96)Step7.BackgroundColor3=Color3.fromRGB(78,84,96)Step6.BackgroundColor3=Color3.fromRGB(78,84,96)Step5.BackgroundColor3=Color3.fromRGB(78,84,96)Step4.BackgroundColor3=Color3.fromRGB(78,84,96)Step3.BackgroundColor3=Color3.fromRGB(0,162,255)Step2.BackgroundColor3=Color3.fromRGB(0,162,255)Step1.BackgroundColor3=Color3.fromRGB(0,162,255)
        loadstring(path.." = "..value*multiplier)()
    elseif value == 4 then
        RightButton_2.Visible=true;RightButton.Visible=true;LeftButton_2.Visible=true;LeftButton.Visible=true;Step10.BackgroundColor3=Color3.fromRGB(78,84,96)Step9.BackgroundColor3=Color3.fromRGB(78,84,96)Step8.BackgroundColor3=Color3.fromRGB(78,84,96)Step7.BackgroundColor3=Color3.fromRGB(78,84,96)Step6.BackgroundColor3=Color3.fromRGB(78,84,96)Step5.BackgroundColor3=Color3.fromRGB(78,84,96)Step4.BackgroundColor3=Color3.fromRGB(0,162,255)Step3.BackgroundColor3=Color3.fromRGB(0,162,255)Step2.BackgroundColor3=Color3.fromRGB(0,162,255)Step1.BackgroundColor3=Color3.fromRGB(0,162,255)
        loadstring(path.." = "..value*multiplier)()
    elseif value == 5 then
        RightButton_2.Visible=true;RightButton.Visible=true;LeftButton_2.Visible=true;LeftButton.Visible=true;Step10.BackgroundColor3=Color3.fromRGB(78,84,96)Step9.BackgroundColor3=Color3.fromRGB(78,84,96)Step8.BackgroundColor3=Color3.fromRGB(78,84,96)Step7.BackgroundColor3=Color3.fromRGB(78,84,96)Step6.BackgroundColor3=Color3.fromRGB(78,84,96)Step5.BackgroundColor3=Color3.fromRGB(0,162,255)Step4.BackgroundColor3=Color3.fromRGB(0,162,255)Step3.BackgroundColor3=Color3.fromRGB(0,162,255)Step2.BackgroundColor3=Color3.fromRGB(0,162,255)Step1.BackgroundColor3=Color3.fromRGB(0,162,255)
        loadstring(path.." = "..value*multiplier)()
    elseif value == 6 then
        RightButton_2.Visible=true;RightButton.Visible=true;LeftButton_2.Visible=true;LeftButton.Visible=true;Step10.BackgroundColor3=Color3.fromRGB(78,84,96)Step9.BackgroundColor3=Color3.fromRGB(78,84,96)Step8.BackgroundColor3=Color3.fromRGB(78,84,96)Step7.BackgroundColor3=Color3.fromRGB(78,84,96)Step6.BackgroundColor3=Color3.fromRGB(0,162,255)Step5.BackgroundColor3=Color3.fromRGB(0,162,255)Step4.BackgroundColor3=Color3.fromRGB(0,162,255)Step3.BackgroundColor3=Color3.fromRGB(0,162,255)Step2.BackgroundColor3=Color3.fromRGB(0,162,255)Step1.BackgroundColor3=Color3.fromRGB(0,162,255)
        loadstring(path.." = "..value*multiplier)()
    elseif value == 7 then
        RightButton_2.Visible=true;RightButton.Visible=true;LeftButton_2.Visible=true;LeftButton.Visible=true;Step10.BackgroundColor3=Color3.fromRGB(78,84,96)Step9.BackgroundColor3=Color3.fromRGB(78,84,96)Step8.BackgroundColor3=Color3.fromRGB(78,84,96)Step7.BackgroundColor3=Color3.fromRGB(0,162,255)Step6.BackgroundColor3=Color3.fromRGB(0,162,255)Step5.BackgroundColor3=Color3.fromRGB(0,162,255)Step4.BackgroundColor3=Color3.fromRGB(0,162,255)Step3.BackgroundColor3=Color3.fromRGB(0,162,255)Step2.BackgroundColor3=Color3.fromRGB(0,162,255)Step1.BackgroundColor3=Color3.fromRGB(0,162,255)
        loadstring(path.." = "..value*multiplier)()
    elseif value == 8 then
        RightButton_2.Visible=true;RightButton.Visible=true;LeftButton_2.Visible=true;LeftButton.Visible=true;Step10.BackgroundColor3=Color3.fromRGB(78,84,96)Step9.BackgroundColor3=Color3.fromRGB(78,84,96)Step8.BackgroundColor3=Color3.fromRGB(0,162,255)Step7.BackgroundColor3=Color3.fromRGB(0,162,255)Step6.BackgroundColor3=Color3.fromRGB(0,162,255)Step5.BackgroundColor3=Color3.fromRGB(0,162,255)Step4.BackgroundColor3=Color3.fromRGB(0,162,255)Step3.BackgroundColor3=Color3.fromRGB(0,162,255)Step2.BackgroundColor3=Color3.fromRGB(0,162,255)Step1.BackgroundColor3=Color3.fromRGB(0,162,255)
        loadstring(path.." = "..value*multiplier)()
    elseif value == 9 then
        RightButton_2.Visible=true;RightButton.Visible=true;LeftButton_2.Visible=true;LeftButton.Visible=true;Step10.BackgroundColor3=Color3.fromRGB(78,84,96)Step9.BackgroundColor3=Color3.fromRGB(0,162,255)Step8.BackgroundColor3=Color3.fromRGB(0,162,255)Step7.BackgroundColor3=Color3.fromRGB(0,162,255)Step6.BackgroundColor3=Color3.fromRGB(0,162,255)Step5.BackgroundColor3=Color3.fromRGB(0,162,255)Step4.BackgroundColor3=Color3.fromRGB(0,162,255)Step3.BackgroundColor3=Color3.fromRGB(0,162,255)Step2.BackgroundColor3=Color3.fromRGB(0,162,255)Step1.BackgroundColor3=Color3.fromRGB(0,162,255)
        loadstring(path.." = "..value*multiplier)()
    elseif value == 10 then
        RightButton_2.Visible=false;RightButton.Visible=false;LeftButton_2.Visible=true;LeftButton.Visible=true;Step10.BackgroundColor3=Color3.fromRGB(0,162,255)Step9.BackgroundColor3=Color3.fromRGB(0,162,255)Step8.BackgroundColor3=Color3.fromRGB(0,162,255)Step7.BackgroundColor3=Color3.fromRGB(0,162,255)Step6.BackgroundColor3=Color3.fromRGB(0,162,255)Step5.BackgroundColor3=Color3.fromRGB(0,162,255)Step4.BackgroundColor3=Color3.fromRGB(0,162,255)Step3.BackgroundColor3=Color3.fromRGB(0,162,255)Step2.BackgroundColor3=Color3.fromRGB(0,162,255)Step1.BackgroundColor3=Color3.fromRGB(0,162,255)
        loadstring(path.." = "..value*multiplier)()
    end
    


    local mousedown = false
    Step1.MouseButton1Down:Connect(function()
    mousedown = true
    end)
    Step1.MouseButton1Up:Connect(function()

    mousedown = false
    end)
    Step2.MouseButton1Down:Connect(function()
mousedown = true
    end)
    Step2.MouseButton1Up:Connect(function()

    mousedown = false
    end)
    Step3.MouseButton1Down:Connect(function()
    mousedown = true
    end)
    Step3.MouseButton1Up:Connect(function()

    mousedown = false
    end)
    Step4.MouseButton1Down:Connect(function()
    mousedown = true
    end)
    Step4.MouseButton1Up:Connect(function()

    mousedown = false
    end)
    Step5.MouseButton1Down:Connect(function()
    mousedown = true
    end)
    Step5.MouseButton1Up:Connect(function()

    mousedown = false
    end)
    Step6.MouseButton1Down:Connect(function()
    mousedown = true
    end)
    Step6.MouseButton1Up:Connect(function()

    mousedown = false
    end)
    Step7.MouseButton1Down:Connect(function()
    mousedown = true
    end)
    Step7.MouseButton1Up:Connect(function()

    mousedown = false
    end)
    Step8.MouseButton1Down:Connect(function()
    mousedown = true
    end)
    Step8.MouseButton1Up:Connect(function()
    mousedown = false
    end)
    Step9.MouseButton1Down:Connect(function()

    mousedown = true
    end)
    Step9.MouseButton1Up:Connect(function()

    mousedown = false
    end)
    Step10.MouseButton1Down:Connect(function()

    mousedown = true
    end)
    Step10.MouseButton1Up:Connect(function()

    mousedown = false
    end)
    Step1.MouseEnter:Connect(function()
    if mousedown == true then
    value = 1
    RightButton_2.Visible = true
    RightButton.Visible = true
    LeftButton_2.Visible = true
    LeftButton.Visible = true
    Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step3.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step2.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
loadstring(path.." = "..value*multiplier)()
    end
    end)

    Step2.MouseEnter:Connect(function()
    if mousedown == true then
    value = 2
    RightButton_2.Visible = true
    RightButton.Visible = true
    LeftButton_2.Visible = true
    LeftButton.Visible = true
    Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step3.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
loadstring(path.." = "..value*multiplier)()
    end
    end)
    Step3.MouseEnter:Connect(function()
            if mousedown == true then

    value = 3
    RightButton_2.Visible = true
    RightButton.Visible = true
    LeftButton_2.Visible = true
    LeftButton.Visible = true
    Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    end
    end)
    Step4.MouseEnter:Connect(function()
            if mousedown == true then

    value = 4
    RightButton_2.Visible = true
    RightButton.Visible = true
    LeftButton_2.Visible = true
    LeftButton.Visible = true

    Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    loadstring(path.." = "..value*multiplier)()
    end
    end)
    Step5.MouseEnter:Connect(function()
            if mousedown == true then

    value = 5
    RightButton_2.Visible = true
    RightButton.Visible = true
    LeftButton_2.Visible = true
    LeftButton.Visible = true

    Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    loadstring(path.." = "..value*multiplier)()
    end
    end)
    Step6.MouseEnter:Connect(function()
            if mousedown == true then

    value = 6
    RightButton_2.Visible = true
    RightButton.Visible = true
    LeftButton_2.Visible = true
    LeftButton.Visible = true

    Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    loadstring(path.." = "..value*multiplier)()

    end
    end)
    Step7.MouseEnter:Connect(function()
            if mousedown == true then

    value = 7
    RightButton_2.Visible = true
    RightButton.Visible = true
    LeftButton_2.Visible = true
    LeftButton.Visible = true

    Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    loadstring(path.." = "..value*multiplier)()
    end
    end)
    Step8.MouseEnter:Connect(function()
            if mousedown == true then

    value = 8
    RightButton_2.Visible = true
    RightButton.Visible = true
    LeftButton_2.Visible = true
    LeftButton.Visible = true

    Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step8.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    loadstring(path.." = "..value*multiplier)()
    end
    end)
    Step9.MouseEnter:Connect(function()
            if mousedown == true then

    value = 9
    RightButton_2.Visible = true
    RightButton.Visible = true
    LeftButton_2.Visible = true
    LeftButton.Visible = true

    Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    Step9.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step8.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    loadstring(path.." = "..value*multiplier)()
    end
    end)
    Step10.MouseEnter:Connect(function()
            if mousedown == true then

    value = 10
    RightButton_2.Visible = false
    RightButton.Visible = false
    LeftButton_2.Visible = true
    LeftButton.Visible = true

    Step10.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step9.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step8.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
    loadstring(path.." = "..value*multiplier)()
    end
    end)
    LeftButton.MouseEnter:Connect(function()
    if mousedown == true and Step2.BackgroundColor3 == Color3.fromRGB(78, 84, 96) then
    Step1.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
    LeftButton_2.Visible = false
    LeftButton.Visible = false
    value = 0
    end
    end)
Step1.MouseButton1Down:Connect(function()
value = 1
loadstring(path.." = "..value*multiplier)()
RightButton_2.Visible = true
RightButton.Visible = true
LeftButton_2.Visible = true
LeftButton.Visible = true
Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step3.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step2.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
end)


Step2.MouseButton1Down:Connect(function()
value = 2
    loadstring(path.." = "..value*multiplier)()

RightButton_2.Visible = true
RightButton.Visible = true
LeftButton_2.Visible = true
LeftButton.Visible = true
Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step3.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
end)
Step3.MouseButton1Down:Connect(function()
value = 3
    loadstring(path.." = "..value*multiplier)()

RightButton_2.Visible = true
RightButton.Visible = true
LeftButton_2.Visible = true
LeftButton.Visible = true
Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
end)
Step4.MouseButton1Down:Connect(function()
value = 4
    loadstring(path.." = "..value*multiplier)()

RightButton_2.Visible = true
RightButton.Visible = true
LeftButton_2.Visible = true
LeftButton.Visible = true

Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
end)
Step5.MouseButton1Down:Connect(function()
value = 5
    loadstring(path.." = "..value*multiplier)()

RightButton_2.Visible = true
RightButton.Visible = true
LeftButton_2.Visible = true
LeftButton.Visible = true

Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
end)
Step6.MouseButton1Down:Connect(function()
value = 6
    loadstring(path.." = "..value*multiplier)()

RightButton_2.Visible = true
RightButton.Visible = true
LeftButton_2.Visible = true
LeftButton.Visible = true

Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
end)
Step7.MouseButton1Down:Connect(function()
value = 7
    loadstring(path.." = "..value*multiplier)()

RightButton_2.Visible = true
RightButton.Visible = true
LeftButton_2.Visible = true
LeftButton.Visible = true
mousedown = false
Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
end)
Step8.MouseButton1Down:Connect(function()
value = 8
    loadstring(path.." = "..value*multiplier)()

RightButton_2.Visible = true
RightButton.Visible = true
LeftButton_2.Visible = true
LeftButton.Visible = true
mousedown = false
Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step8.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
end)
Step9.MouseButton1Down:Connect(function()
value = 9
    loadstring(path.." = "..value*multiplier)()
mousedown = false
RightButton_2.Visible = true
RightButton.Visible = true
LeftButton_2.Visible = true
LeftButton.Visible = true

Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Step9.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step8.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
end)
Step10.MouseButton1Down:Connect(function()
value = 10
    loadstring(path.." = "..value*multiplier)()
mousedown = false
RightButton_2.Visible = false
RightButton.Visible = false
LeftButton_2.Visible = true
LeftButton.Visible = true

Step10.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step9.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step8.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
end)
    RightButton.MouseButton1Down:Connect(function()
        if value == 0 then
           value = 1
           LeftButton_2.Visible = true
           LeftButton.Visible = true
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step3.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step2.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 1 then
           value = 2
           LeftButton_2.Visible = true
           LeftButton.Visible = true
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step3.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 2 then
           value = 3
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 3 then
           value = 4
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 4 then
           value = 5
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 5 then
           value = 6
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 6 then
           value = 7
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 7 then
           value = 8
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 8 then
           value = 9
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step8.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 9 then
           value = 10
           Step10.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step9.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step8.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           RightButton.Visible = false
           RightButton_2.Visible = false
        end
        loadstring(path.." = "..value*multiplier)()
    end)

    LeftButton.MouseButton1Down:Connect(function()
        if value == 10 then
           value = 9
           RightButton.Visible = true
           RightButton_2.Visible = true
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step8.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 9 then
           value = 8
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 8 then
           value = 7
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 7 then
           value = 6
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 6 then
           value = 5
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step5.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 5 then
           value = 4
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step4.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 4 then
           value = 3
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step3.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 3 then
           value = 2
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step3.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step2.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 2 then
           value = 1
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step3.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step2.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step1.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
        elseif value == 1 then
           value = 0
           Step10.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step9.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step8.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step7.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step6.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step5.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step4.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step3.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step2.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           Step1.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
           LeftButton_2.Visible = false
           LeftButton.Visible = false
        end
        loadstring(path.." = "..value*multiplier)()
    end)
end


function switch(name, path, default)
    local SwitchFrame = Instance.new("ImageButton")
    local SwitchLabel = Instance.new("TextLabel")
    local Selector = Instance.new("ImageButton")
    local LeftButton1 = Instance.new("ImageButton")
    local LeftButton_3 = Instance.new("ImageLabel")
    local RightButton1 = Instance.new("ImageButton")
    local RightButton_3 = Instance.new("ImageLabel")
    local AutoSelectButton = Instance.new("ImageButton")
    local Selection1 = Instance.new("TextLabel")
    local Selection2 = Instance.new("TextLabel")

    SwitchFrame.Name = "SwitchFrame"
    SwitchFrame.Parent = Frame
    SwitchFrame.Active = false
    SwitchFrame.BackgroundTransparency = 1.000
    SwitchFrame.BorderSizePixel = 0
    SwitchFrame.LayoutOrder = 1
    SwitchFrame.Selectable = false
    SwitchFrame.Size = UDim2.new(1, 0, 0, 50)
    SwitchFrame.ZIndex = 2
    SwitchFrame.AutoButtonColor = false
    SwitchFrame.Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png"
    SwitchFrame.ImageColor3 = Color3.fromRGB(163, 162, 165)
    SwitchFrame.ImageTransparency = 1.000
    SwitchFrame.ScaleType = Enum.ScaleType.Slice
    SwitchFrame.SliceCenter = Rect.new(2, 2, 18, 18)

    SwitchFrame.MouseEnter:Connect(function()
        SwitchFrame.ImageTransparency = 0.5
    end)

    SwitchFrame.MouseLeave:Connect(function()
        SwitchFrame.ImageTransparency = 1
    end)

    SwitchLabel.Name = "SwitchLabel"
    SwitchLabel.Parent = SwitchFrame
    SwitchLabel.BackgroundTransparency = 1.000
    SwitchLabel.Position = UDim2.new(0, 10, 0, 0)
    SwitchLabel.Size = UDim2.new(0, 200, 1, 0)
    SwitchLabel.ZIndex = 2
    SwitchLabel.Font = Enum.Font.SourceSansBold
    SwitchLabel.Text = name
    SwitchLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    SwitchLabel.TextSize = 24.000
    SwitchLabel.TextXAlignment = Enum.TextXAlignment.Left

    Selector.Name = "Selector"
    Selector.Parent = SwitchFrame
    Selector.AnchorPoint = Vector2.new(1, 0.5)
    Selector.BackgroundTransparency = 1.000
    Selector.Position = UDim2.new(1, 0, 0.5, 0)
    Selector.Size = UDim2.new(0.600000024, 0, 0, 50)
    Selector.ZIndex = 2
    Selector.AutoButtonColor = false

    LeftButton1.Name = "LeftButton"
    LeftButton1.Parent = Selector
    LeftButton1.AnchorPoint = Vector2.new(0, 0.5)
    LeftButton1.BackgroundTransparency = 1.000
    LeftButton1.Position = UDim2.new(0, 0, 0.5, 0)
    LeftButton1.Selectable = false
    LeftButton1.Size = UDim2.new(0, 50, 0, 50)
    LeftButton1.ZIndex = 3

    LeftButton_3.Name = "LeftButton"
    LeftButton_3.Parent = LeftButton1
    LeftButton_3.AnchorPoint = Vector2.new(0.5, 0.5)
    LeftButton_3.BackgroundTransparency = 1.000
    LeftButton_3.Position = UDim2.new(0.5, 0, 0.5, 0)
    LeftButton_3.Size = UDim2.new(0, 18, 0, 30)
    LeftButton_3.ZIndex = 4
    LeftButton_3.Image = "rbxasset://textures/ui/Settings/Slider/Left.png"
    LeftButton_3.ImageColor3 = Color3.fromRGB(204, 204, 204)

    LeftButton_3.MouseEnter:Connect(function()
    LeftButton_3.ImageColor3 = Color3.fromRGB(255, 255, 255)
    end)

    LeftButton_3.MouseLeave:Connect(function()
    LeftButton_3.ImageColor3 = Color3.fromRGB(204, 204, 204)
    end)

    RightButton1.Name = "RightButton"
    RightButton1.Parent = Selector
    RightButton1.AnchorPoint = Vector2.new(1, 0.5)
    RightButton1.BackgroundTransparency = 1.000
    RightButton1.Position = UDim2.new(1, 0, 0.5, 0)
    RightButton1.Selectable = false
    RightButton1.Size = UDim2.new(0, 50, 0, 50)
    RightButton1.ZIndex = 3

    RightButton_3.Name = "RightButton"
    RightButton_3.Parent = RightButton1
    RightButton_3.AnchorPoint = Vector2.new(0.5, 0.5)
    RightButton_3.BackgroundTransparency = 1.000
    RightButton_3.Position = UDim2.new(0.5, 0, 0.5, 0)
    RightButton_3.Size = UDim2.new(0, 18, 0, 30)
    RightButton_3.ZIndex = 4
    RightButton_3.Image = "rbxasset://textures/ui/Settings/Slider/Right.png"
    RightButton_3.ImageColor3 = Color3.fromRGB(204, 204, 204)

    RightButton_3.MouseEnter:Connect(function()
    RightButton_3.ImageColor3 = Color3.fromRGB(255, 255, 255)
    end)

    RightButton_3.MouseLeave:Connect(function()
    RightButton_3.ImageColor3 = Color3.fromRGB(204, 204, 204)
    end)


    AutoSelectButton.Name = "AutoSelectButton"
    AutoSelectButton.Parent = Selector
    AutoSelectButton.BackgroundTransparency = 1.000
    AutoSelectButton.Position = UDim2.new(0, 50, 0, 0)
    AutoSelectButton.Selectable = false
    AutoSelectButton.Size = UDim2.new(1, -100, 1, 0)
    AutoSelectButton.ZIndex = 2

    Selection1.Name = "Selection1"
    Selection1.Parent = Selector
    Selection1.BackgroundTransparency = 1.000
    Selection1.BorderSizePixel = 0
    Selection1.Position = UDim2.new(0, 50, 0, 0)
    Selection1.Size = UDim2.new(1, -100, 1, 0)
    Selection1.ZIndex = 2
    Selection1.Font = Enum.Font.SourceSans
    Selection1.Text = "On"
    Selection1.TextColor3 = Color3.fromRGB(255, 255, 255)
    Selection1.TextSize = 24.000
    Selection1.TextTransparency = 0.5
    Selection1.Visible = true

    Selection2.Name = "Selection2"
    Selection2.Parent = Selector
    Selection2.BackgroundTransparency = 1.000
    Selection2.BorderSizePixel = 0
    Selection2.Position = UDim2.new(0, -54, 0, 0)
    Selection2.Size = UDim2.new(1, -100, 1, 0)
    Selection2.ZIndex = 2
    Selection2.Font = Enum.Font.SourceSans
    Selection2.Text = "Off"
    Selection2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Selection2.TextSize = 24.000
    Selection2.TextTransparency = 0.5
    Selection2.Visible = false


    SwitchFrame.MouseEnter:Connect(function()
        Selection1.TextTransparency = 0
        Selection2.TextTransparency = 0
    end)
    
    SwitchFrame.MouseLeave:Connect(function()
        Selection1.TextTransparency = 0.5
        Selection2.TextTransparency = 0.5
    end)
    
    if default == true then
        loadstring(path.." = true")()
    elseif default == false then
        loadstring(path.." = false")()
        Selection2.Visible = true
        Selection2.Position = UDim2.new(0.1, 0, 0, 0)
        Selection2.TextTransparency = 0.5
        Selection1.Position = UDim2.new(0.5, 0, 0, 0)
        Selection1.Visible = false
        Selection1.TextTransparency = 1
    end
    local one1 = false
    RightButton1.MouseButton1Down:Connect(function()
    if one1 == false then
        Selection2:TweenPosition(UDim2.new(0.25, 0, 0, 0), "Out", "Sine", 0.2)
    local Tween = game:GetService("TweenService"):Create(Selection2,TweenInfo.new(0.1),{TextTransparency=1})
    Tween:Play()
    wait(0.1)
    Selection2.Visible = false
    Selection1.Position = UDim2.new(-0.5, 0, 0, 0)
    loadstring(path.." = true")()
    local Tween = game:GetService("TweenService"):Create(Selection1,TweenInfo.new(0.1),{TextTransparency=0})
    Tween:Play()
    Selection1:TweenPosition(UDim2.new(0.1, 0, 0, 0), "Out", "Sine", 0.2)
    wait(0.1)
    Selection1.Visible = true
    one1 = true

    else
    Selection1:TweenPosition(UDim2.new(0.5, 0, 0, 0), "Out", "Sine", 0.2)
    local Tween = game:GetService("TweenService"):Create(Selection1,TweenInfo.new(0.1),{TextTransparency=1})
    Tween:Play()
    wait(0.1)
    Selection1.Visible = false
    Selection2.Position = UDim2.new(-0.5, 0, 0, 0)
    loadstring(path.." = false")()
    local Tween = game:GetService("TweenService"):Create(Selection2,TweenInfo.new(0.1),{TextTransparency=0})
    Tween:Play()
    Selection2:TweenPosition(UDim2.new(0.1, 0, 0, 0), "Out", "Sine", 0.2)
    wait(0.1)
    Selection2.Visible = true
    one1 = false
    end
    end)
    
    local one2 = false
    LeftButton1.MouseButton1Down:Connect(function()
    if one2 == false then
    Selection1:TweenPosition(UDim2.new(-0.5, 0, 0, 0), "Out", "Sine", 0.2)
    local Tween = game:GetService("TweenService"):Create(Selection1,TweenInfo.new(0.1),{TextTransparency=1})
    Tween:Play()
    wait(0.1)
    Selection1.Visible = false
    Selection2.Position = UDim2.new(0.5, 0, 0, 0)
    loadstring(path.." = false")()
    local Tween = game:GetService("TweenService"):Create(Selection2,TweenInfo.new(0.1),{TextTransparency=0})
    Tween:Play()
    Selection2:TweenPosition(UDim2.new(0.1, 0, 0, 0), "Out", "Sine", 0.2)
    wait(0.1)
    Selection2.Visible = true
    one2 = true
    else
            Selection2:TweenPosition(UDim2.new(-0.25, 0, 0, 0), "Out", "Sine", 0.2)
    local Tween = game:GetService("TweenService"):Create(Selection2,TweenInfo.new(0.1),{TextTransparency=1})
    Tween:Play()
    wait(0.1)
    Selection2.Visible = false
        Selection1.Position = UDim2.new(-0.5, 0, 0, 0)
    loadstring(path.." = true")()
    local Tween = game:GetService("TweenService"):Create(Selection1,TweenInfo.new(0.1),{TextTransparency=0})
    Tween:Play()
    Selection1:TweenPosition(UDim2.new(0.1, 0, 0, 0), "Out", "Sine", 0.2)
    wait(0.1)
    Selection1.Visible = true
    one2 = false
    end
    end)
end

loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Other/FWV2%20Script%20Commands.lua',true))()

local reanims = {
    
    ["r6"] =  [[
	    loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua',true))()  
    ]],
    
    ["r6f"] = [[     
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Flings.lua',true))() 
    ]],

    ["r6d"] = [[
	    loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Perma%20Death.lua',true))() 
    ]],
}

local scriptcontrols = {
    ["cmds"] = [[
        local bro = Instance.new("Sound")
        bro.Parent = Game:GetService("Players").LocalPlayer.PlayerGui
        bro.Name = "Intro"
        bro.Volume = 5
        bro.SoundId = "rbxassetid://732572828"
        bro:Play()
    ]],

    ["noscript"] = [[function()
        local Players = game:GetService("Players")

        Players.LocalPlayer:Kick("to lazy to delete ui or something so just making u rj 😂😂😂😐😂😂")
		wait()
		game:GetService('TeleportService'):Teleport(game.PlaceId, Players.LocalPlayer)
    ]],
    
    ["re"] = [[
        local Players = game:GetService("Players")

        Players.LocalPlayer:Kick("making you rejoin so scripts 100% work")
		wait()
		game:GetService('TeleportService'):Teleport(game.PlaceId, Players.LocalPlayer)
    ]],
}

tlabel("")
tlabel("Reanimations")
tlabel("")

for i, code in	 pairs(reanims) do
    button(i, code) --name, code
end

tlabel("")
tlabel("Script Controls")
tlabel("")

for i, code in	 pairs(scriptcontrols) do
    button(i, code)
end

tlabel("")
tlabel("Scripts")
tlabel("")

for i, code in	 pairs(scriptcmds) do
    button(i, code)
end
