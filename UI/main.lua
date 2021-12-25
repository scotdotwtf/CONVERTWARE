--// Start
local CONVERTWARE = Instance.new("ScreenGui")
local mainbar = Instance.new("Frame")
local input1 = Instance.new("TextBox")
local sendlabel = Instance.new("TextLabel")
local predictframe = Instance.new("Frame")
local CmdsListLayout = Instance.new("UIListLayout")
local _0 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")

CONVERTWARE.Name = "CONVERTWARE"
CONVERTWARE.Parent = game.CoreGui

mainbar.Name = "mainbar"
mainbar.Parent = CONVERTWARE
mainbar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
mainbar.BackgroundTransparency = 0.100
mainbar.BorderSizePixel = 0
mainbar.ClipsDescendants = true
mainbar.Position = UDim2.new(0.5, -375, 0, -100)
mainbar.Size = UDim2.new(0, 750, 0, 25)
mainbar.ZIndex = 0
mainbar.Visible = false

input1.Name = "input"
input1.Parent = mainbar
input1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
input1.BackgroundTransparency = 0.990
input1.BorderSizePixel = 0
input1.Position = UDim2.new(0.0399999991, 0, 0, 0)
input1.Size = UDim2.new(0.959999979, 0, 1, 0)
input1.ZIndex = 2
input1.Font = Enum.Font.RobotoMono
input1.PlaceholderColor3 = Color3.fromRGB(59, 158, 229)
input1.PlaceholderText = "convertware.exe"
input1.Text = ""
input1.TextColor3 = Color3.fromRGB(59, 158, 229)
input1.TextSize = 14.000
input1.TextXAlignment = Enum.TextXAlignment.Left

sendlabel.Name = "sendlabel"
sendlabel.Parent = mainbar
sendlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sendlabel.BackgroundTransparency = 1.000
sendlabel.BorderSizePixel = 0
sendlabel.Size = UDim2.new(0, 30, 0, 25)
sendlabel.Font = Enum.Font.RobotoMono
sendlabel.Text = ">"
sendlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
sendlabel.TextSize = 14.000

predictframe.Name = "predictframe"
predictframe.Parent = mainbar
predictframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
predictframe.BackgroundTransparency = 1.000
predictframe.BorderSizePixel = 0
predictframe.Position = UDim2.new(0.0399999991, 0, 0, 0)
predictframe.Size = UDim2.new(0, 720, 0, 25)

CmdsListLayout.Name = "CmdsListLayout"
CmdsListLayout.Parent = predictframe

_0.Name = "0"
_0.Parent = predictframe
_0.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_0.BackgroundTransparency = 1.000
_0.BorderSizePixel = 0
_0.Size = UDim2.new(1, 0, 1, 0)
_0.Font = Enum.Font.RobotoMono
_0.Text = ""
_0.TextColor3 = Color3.fromRGB(132, 132, 132)
_0.TextSize = 14.000
_0.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel.Parent = CONVERTWARE
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.5, -338, 0.5, -500)
ImageLabel.Size = UDim2.new(0, 676, 0, 346)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8268121341"
ImageLabel.ScaleType = Enum.ScaleType.Fit
ImageLabel.ZIndex = 4

--// Cmds Frame
local cmframe = Instance.new("Frame")
local closembutton = Instance.new("TextButton")
local scrollingcmdsframe = Instance.new("ScrollingFrame")
local ScrollingPadding = Instance.new("UIPadding")
local ScrollingLIstLayout = Instance.new("UIListLayout")
local Header = Instance.new("TextLabel")
local HeadingConstraint = Instance.new("UITextSizeConstraint")

cmframe.Name = "cmframe"
cmframe.Parent = CONVERTWARE
cmframe.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
cmframe.BackgroundTransparency = 0.100
cmframe.Position = UDim2.new(0.5, -184, 0.5, -92)
cmframe.Size = UDim2.new(0, 368, 0, 185)
cmframe.BorderSizePixel = 0
cmframe.Visible = false
cmframe.ZIndex = 0

closembutton.Name = "closembutton"
closembutton.Parent = cmframe
closembutton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
closembutton.BackgroundTransparency = 0.100
closembutton.BorderSizePixel = 0
closembutton.Position = UDim2.new(0.5, -178, 1, -28)
closembutton.Size = UDim2.new(0, 356, 0, 22)
closembutton.Font = Enum.Font.RobotoMono
closembutton.Text = "Close"
closembutton.TextColor3 = Color3.fromRGB(59, 158, 229)
closembutton.TextSize = 14.000

scrollingcmdsframe.Name = "scrollingcmdsframe"
scrollingcmdsframe.Parent = cmframe
scrollingcmdsframe.Active = true
scrollingcmdsframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingcmdsframe.BackgroundTransparency = 1.000
scrollingcmdsframe.BorderSizePixel = 0
scrollingcmdsframe.Position = UDim2.new(0.0163043477, 0, 0.28108108, 0)
scrollingcmdsframe.Size = UDim2.new(0, 356, 0, 99)
scrollingcmdsframe.Visible = true
scrollingcmdsframe.BottomImage = "rbxassetid://6689849479"
scrollingcmdsframe.CanvasSize = UDim2.new(0, 0, 6, 0)
scrollingcmdsframe.MidImage = "rbxassetid://6689849479"
scrollingcmdsframe.TopImage = "rbxassetid://6689849479"
scrollingcmdsframe.ScrollBarImageColor3 = Color3.fromRGB(112, 112, 112)
scrollingcmdsframe.ScrollBarImageTransparency = 0.75

ScrollingPadding.Name = "ScrollingPadding"
ScrollingPadding.Parent = scrollingcmdsframe
ScrollingPadding.PaddingLeft = UDim.new(0, 1)
ScrollingPadding.PaddingTop = UDim.new(0, 1)

ScrollingLIstLayout.Name = "ScrollingLIstLayout"
ScrollingLIstLayout.Parent = scrollingcmdsframe
ScrollingLIstLayout.SortOrder = Enum.SortOrder.Name
ScrollingLIstLayout.Padding = UDim.new(0, 5)

Header.Name = "Header"
Header.Parent = cmframe
Header.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
Header.BackgroundTransparency = 0.750
Header.BorderSizePixel = 0
Header.Size = UDim2.new(1, 0, -0.0216216221, 50)
Header.Font = Enum.Font.RobotoMono
Header.Text = "CMDS"
Header.TextColor3 = Color3.fromRGB(59, 158, 229)
Header.TextScaled = true
Header.TextSize = 41.000
Header.TextWrapped = true

HeadingConstraint.Name = "HeadingConstraint"
HeadingConstraint.Parent = Header
HeadingConstraint.MaxTextSize = 35

--// Stadly I had to manually convert EVERY UISTROKE so yeah...
local CMFrameStroke = Instance.new("UIStroke")
local CloseButtonStroke = Instance.new("UIStroke")
local MainBarStroke = Instance.new("UIStroke")

CMFrameStroke.Parent = cmframe
CMFrameStroke.Name = "UI Stroke"
CMFrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
CMFrameStroke.Color = Color3.fromRGB(59, 158, 229)
CMFrameStroke.Thickness = 1.25

CloseButtonStroke.Parent = closembutton
CloseButtonStroke.Name = "UI Stroke"
CloseButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
CloseButtonStroke.Color = Color3.fromRGB(59, 158, 229)
CloseButtonStroke.Thickness = 1.25

MainBarStroke.Parent = mainbar
MainBarStroke.Name = "UI Stroke"
MainBarStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainBarStroke.Color = Color3.fromRGB(59, 158, 229)
MainBarStroke.Thickness = 1.25

--// Close Cmds
closembutton.MouseButton1Click:Connect(function()
    cmframe.Visible = false
end)

local function CMSG(text)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = text,
        Font = Enum.Font.Gotham,
		Color = Color3.fromRGB(255, 255, 255),
		TextSize = 16,
	});
end

input1.FocusLost:Connect(function()
    mainbar:TweenPosition(UDim2.new(0.5, -375, 0, -100),"In","Quint",.3)
    input1:ReleaseFocus()
    wait(0.3)
    input1.Text = ""
    mainbar.Visible = false
end)

--// Key Toggle
local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input, gameProcessedEvent)
	if input.KeyCode == Enum.KeyCode.LeftAlt then
		if mainbar.Visible == false then
            mainbar.Visible = true
            input1:CaptureFocus()
            mainbar:TweenPosition(UDim2.new(0.5, -375, 0, 25),"Out","Quint",.3)
        else
            mainbar:TweenPosition(UDim2.new(0.5, -375, 0, -100),"In","Quint",.3)
            input1:ReleaseFocus()
            wait(0.3)
            input1.Text = ""
            mainbar.Visible = false
        end
	end
end)

scriptcontrols = {
    ["cmds"] = function()
        cmframe.Visible = true
    end,

    ["noscript"] = function()
        CONVERTWARE:Destroy()
    end,
    
    ["re"] = function()
        local Players = game:GetService("Players")

        Players.LocalPlayer:Kick("making you rejoin so scripts 100% work")
		wait()
		game:GetService('TeleportService'):Teleport(game.PlaceId, Players.LocalPlayer)
    end,
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Other/Script%20Commands.lua',true))()

--// Run Cmd
input1.FocusLost:connect(function(enterPressed)
    if enterPressed then
        if scriptcmds[input1.Text] then
            scriptcmds[input1.Text]() 
        end
    end
end)

--// Run Script Control Cmd
input1.FocusLost:connect(function(enterPressed)
    if enterPressed then
        if scriptcontrols[input1.Text] then
            scriptcontrols[input1.Text]() 
        end
    end
end)

function UpdateResults()
    local search = string.lower(input1.Text)
    for i, v in	 pairs(predictframe:GetChildren()) do
        if v:IsA("TextLabel") then
            if search ~= "" then
                local item = string.lower(v.Text)
                if string.find(item, search) then
                    v.Visible = true
                else
                    v.Visible = false
                end
            else
                v.Visible = true
            end
        end
    end
end

input1.Changed:Connect(UpdateResults)

--// Add Command
function addcmd(CmdText)
    local newcmd1 = Instance.new("TextLabel")
    local newcmd2 = Instance.new("TextLabel")
    local CmdStroke = Instance.new("UIStroke")

    newcmd1.Name = CmdText
    newcmd1.Parent = predictframe
    newcmd1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    newcmd1.BackgroundTransparency = 1.000
    newcmd1.BorderSizePixel = 0
    newcmd1.Size = UDim2.new(1, 0, 1, 0)
    newcmd1.Font = Enum.Font.RobotoMono
    newcmd1.Text = CmdText
    newcmd1.TextColor3 = Color3.fromRGB(132, 132, 132)
    newcmd1.TextSize = 14.000
    newcmd1.TextXAlignment = Enum.TextXAlignment.Left

    newcmd2.Name = CmdText
    newcmd2.Parent = scrollingcmdsframe
    newcmd2.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
    newcmd2.BackgroundTransparency = 0.750
    newcmd2.BorderSizePixel = 0
    newcmd2.Size = UDim2.new(0, 339, 0, 25)
    newcmd2.Font = Enum.Font.RobotoMono
    newcmd2.Text = CmdText
    newcmd2.TextColor3 = Color3.fromRGB(255, 255, 255)
    newcmd2.TextSize = 14.000
    newcmd2.ZIndex = 2

    CmdStroke.Parent = newcmd2
    CmdStroke.Name = "UI Stroke"
    CmdStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    CmdStroke.Color = Color3.fromRGB(59, 158, 229)
    CmdStroke.Thickness = 1.25
end

--// Function Announcement Message
function newmessage(HeaderText, ParagraphText)
    local cmframe = Instance.new("Frame")
    local Paragraph = Instance.new("TextLabel")
    local ParagraphConstraint = Instance.new("UIPadding")
    local closembutton = Instance.new("TextButton")
    local Header = Instance.new("TextLabel")
    local HeadingConstraint = Instance.new("UITextSizeConstraint")

    cmframe.Name = "cmframe"
    cmframe.Parent = CONVERTWARE
    cmframe.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    cmframe.BackgroundTransparency = 0.100
    cmframe.BorderSizePixel = 0
    cmframe.Position = UDim2.new(0, 25, 1, -210)
    cmframe.Size = UDim2.new(0, 368, 0, 185)
    cmframe.Visible = true
    cmframe.ZIndex = 0

    Paragraph.Name = "Paragraph"
    Paragraph.Parent = cmframe
    Paragraph.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
    Paragraph.BackgroundTransparency = 1.000
    Paragraph.BorderSizePixel = 0
    Paragraph.Position = UDim2.new(0, 0, 0.248648643, 0)
    Paragraph.Size = UDim2.new(1, 0, 0.297297299, 50)
    Paragraph.Visible = true
    Paragraph.Font = Enum.Font.RobotoMono
    Paragraph.Text = ParagraphText
    Paragraph.TextColor3 = Color3.fromRGB(255, 255, 255)
    Paragraph.TextSize = 20.000
    Paragraph.TextWrapped = true
    Paragraph.TextYAlignment = Enum.TextYAlignment.Top

    ParagraphConstraint.Name = "ParagraphConstraint"
    ParagraphConstraint.Parent = Paragraph
    ParagraphConstraint.PaddingTop = UDim.new(0.100000001, 0)

    closembutton.Name = "closembutton"
    closembutton.Parent = cmframe
    closembutton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    closembutton.BackgroundTransparency = 0.100
    closembutton.BorderSizePixel = 0
    closembutton.Position = UDim2.new(0.5, -178, 1, -28)
    closembutton.Size = UDim2.new(0, 356, 0, 22)
    closembutton.Font = Enum.Font.RobotoMono
    closembutton.Text = "Close"
    closembutton.TextColor3 = Color3.fromRGB(59, 158, 229)
    closembutton.TextSize = 14.000

    Header.Name = "Header"
    Header.Parent = cmframe
    Header.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
    Header.BackgroundTransparency = 0.750
    Header.BorderSizePixel = 0
    Header.Size = UDim2.new(1, 0, -0.0216216221, 50)
    Header.Font = Enum.Font.RobotoMono
    Header.Text = HeaderText
    Header.TextColor3 = Color3.fromRGB(59, 158, 229)
    Header.TextScaled = true
    Header.TextSize = 41.000
    Header.TextWrapped = true

    HeadingConstraint.Name = "HeadingConstraint"
    HeadingConstraint.Parent = Header
    HeadingConstraint.MaxTextSize = 35

    local CMFrameStroke = Instance.new("UIStroke")
    local CloseButtonStroke = Instance.new("UIStroke")

    CMFrameStroke.Parent = cmframe
    CMFrameStroke.Name = "UI Stroke"
    CMFrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    CMFrameStroke.Color = Color3.fromRGB(59, 158, 229)
    CMFrameStroke.Thickness = 1.25

    CloseButtonStroke.Parent = closembutton
    CloseButtonStroke.Name = "UI Stroke"
    CloseButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    CloseButtonStroke.Color = Color3.fromRGB(59, 158, 229)
    CloseButtonStroke.Thickness = 1.25

    closembutton.MouseButton1Click:Connect(function()
        cmframe:Destroy()
    end)

    function closemessage(waittime)
        wait(waittime)
        cmframe:Destroy()
    end
end

for i, v in	 pairs(scriptcmds) do
    addcmd(i)
end

for i, v in	 pairs(scriptcontrols) do
    addcmd(i)
end

--// Intro
local INTRO = Instance.new("Sound")
INTRO.Parent = Game:GetService("Players").LocalPlayer.PlayerGui
INTRO.Name = "Intro"
INTRO.Volume = 5
INTRO.SoundId = "rbxassetid://7214858019"

local TS = game:GetService("TweenService")
local transparencytweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine)
local gamertween = TS:Create(ImageLabel, transparencytweeninfo, {ImageTransparency = 1} )

INTRO:Play()
ImageLabel:TweenPosition(UDim2.new(0.5, -338, 0.5, -173),"Out","Back",.5)
wait(0.5)
gamertween:Play()
wait(2)
ImageLabel:Destroy()

--// Make a message
newmessage("Thank you!", "Thank you for executing convertware, there might be some bugs so please dm me if you find one and i'll try my bes to fix it. spec#9001")
closemessage(5)
