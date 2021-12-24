--// Start
local CONVERTWARE = Instance.new("ScreenGui")
local loadframe = Instance.new("Frame")
local loadbg = Instance.new("Frame")
local commandprompttext = Instance.new("TextLabel")
local system32text = Instance.new("TextLabel")
local welcometext = Instance.new("TextLabel")
local loadingscreenline = Instance.new("Frame")
local accesstext = Instance.new("TextLabel")
local loadicon = Instance.new("ImageLabel")
local loadname = Instance.new("TextLabel")
local loadclosebutton = Instance.new("ImageButton")
local cprompt = Instance.new("Frame")
local mainbar = Instance.new("Frame")
local labels = Instance.new("Frame")
local copyrightlabel = Instance.new("TextLabel")
local verlabel = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local input1 = Instance.new("TextBox")
local predictframe = Instance.new("Frame")
local CmdsListLayout = Instance.new("UIListLayout")
local _0 = Instance.new("TextLabel")
local sendlabel = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local mainicon = Instance.new("ImageLabel")
local mainname = Instance.new("TextLabel")
local mainclosebutton = Instance.new("ImageButton")
local mainminimizebutton = Instance.new("ImageButton")
local cmdsframe = Instance.new("Frame")
local cmdsbg = Instance.new("Frame")
local scrollingcmdsframe = Instance.new("ScrollingFrame")
local Cmd = Instance.new("TextLabel")
local ScrollingPadding = Instance.new("UIPadding")
local ScrollingLIstLayout = Instance.new("UIListLayout")
local cmdsicon = Instance.new("ImageLabel")
local cmdsname = Instance.new("TextLabel")
local cmdsclosebutton = Instance.new("ImageButton")

CONVERTWARE.Name = "CONVERTWARE"
CONVERTWARE.Parent = game.CoreGui

loadframe.Name = "loadframe"
loadframe.Parent = CONVERTWARE
loadframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
loadframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
loadframe.BorderSizePixel = 0
loadframe.Position = UDim2.new(0.39, 0, 1.1, 0)
loadframe.Size = UDim2.new(0, 405, 0, 30)
loadframe.Visible = false
loadframe.ZIndex = 0

loadbg.Name = "loadbg"
loadbg.Parent = loadframe
loadbg.BackgroundColor3 = Color3.fromRGB(3, 3, 3)
loadbg.BorderColor3 = Color3.fromRGB(0, 0, 0)
loadbg.BorderSizePixel = 0
loadbg.ClipsDescendants = true
loadbg.Size = UDim2.new(0, 405, 0, 226)
loadbg.ZIndex = -1

commandprompttext.Name = "commandprompttext"
commandprompttext.Parent = loadbg
commandprompttext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
commandprompttext.BackgroundTransparency = 1.000
commandprompttext.BorderSizePixel = 0
commandprompttext.Position = UDim2.new(1, 0, 0.180999994, 0)
commandprompttext.Size = UDim2.new(1, 0, 0.199115217, 0)
commandprompttext.ZIndex = 4
commandprompttext.Font = Enum.Font.Code
commandprompttext.Text = "Command Prompt"
commandprompttext.TextColor3 = Color3.fromRGB(255, 255, 255)
commandprompttext.TextSize = 34.000

system32text.Name = "system32text"
system32text.Parent = loadbg
system32text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
system32text.BackgroundTransparency = 1.000
system32text.BorderSizePixel = 0
system32text.Position = UDim2.new(-1, 0, 0.381000012, 0)
system32text.Size = UDim2.new(1, 0, 0.199115217, 0)
system32text.ZIndex = 4
system32text.Font = Enum.Font.Code
system32text.Text = "> System 32"
system32text.TextColor3 = Color3.fromRGB(255, 67, 67)
system32text.TextSize = 34.000

welcometext.Name = "welcometext"
welcometext.Parent = loadbg
welcometext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
welcometext.BackgroundTransparency = 1.000
welcometext.BorderSizePixel = 0
welcometext.Position = UDim2.new(0, 0, 0.816299856, 0)
welcometext.Size = UDim2.new(1, 0, 0.126178339, 0)
welcometext.ZIndex = 4
welcometext.Font = Enum.Font.Code
local lplrname = game:GetService("Players").LocalPlayer.Name
welcometext.Text = "Welcome, "..lplrname
welcometext.TextColor3 = Color3.fromRGB(255, 255, 255)
welcometext.TextSize = 20.000
welcometext.TextTransparency = 1.000

loadingscreenline.Name = "loadingscreenline"
loadingscreenline.Parent = loadbg
loadingscreenline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loadingscreenline.BorderSizePixel = 0
loadingscreenline.Position = UDim2.new(0.5, 0, 0.63, 0)
loadingscreenline.Size = UDim2.new(0, 0, 0, 1)

accesstext.Name = "accesstext"
accesstext.Parent = loadbg
accesstext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
accesstext.BackgroundTransparency = 1.000
accesstext.BorderSizePixel = 0
accesstext.Position = UDim2.new(0, 0, 0.688053071, 0)
accesstext.Size = UDim2.new(1, 0, 0.126178339, 0)
accesstext.ZIndex = 4
accesstext.Font = Enum.Font.Code
accesstext.Text = "Access Granted!"
accesstext.TextColor3 = Color3.fromRGB(29, 255, 66)
accesstext.TextSize = 20.000
accesstext.TextTransparency = 1.000

loadicon.Name = "loadicon"
loadicon.Parent = loadframe
loadicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loadicon.BackgroundTransparency = 1.000
loadicon.BorderColor3 = Color3.fromRGB(27, 42, 53)
loadicon.BorderSizePixel = 0
loadicon.Position = UDim2.new(0.0190624185, 0, 0.230769232, 0)
loadicon.Size = UDim2.new(0.0372960381, 0, 0.5, 0)
loadicon.ZIndex = 3
loadicon.Image = "rbxassetid://6989321252"
loadicon.ScaleType = Enum.ScaleType.Fit

loadname.Name = "loadname"
loadname.Parent = loadframe
loadname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loadname.BackgroundTransparency = 1.000
loadname.BorderSizePixel = 0
loadname.Position = UDim2.new(0.448717952, 0, 0.019230783, 0)
loadname.Size = UDim2.new(0.102564104, 0, 0.961538434, 0)
loadname.ZIndex = 4
loadname.Font = Enum.Font.SourceSans
loadname.Text = "Load"
loadname.TextColor3 = Color3.fromRGB(134, 134, 134)
loadname.TextSize = 14.000

loadclosebutton.Name = "loadclosebutton"
loadclosebutton.Parent = loadframe
loadclosebutton.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
loadclosebutton.BackgroundTransparency = 1.000
loadclosebutton.BorderSizePixel = 0
loadclosebutton.Position = UDim2.new(1, -45, 0, 0)
loadclosebutton.Size = UDim2.new(0, 45, 0, 20)
loadclosebutton.Image = "rbxassetid://8222909762"

cprompt.Name = "cprompt"
cprompt.Parent = CONVERTWARE
cprompt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
cprompt.BorderColor3 = Color3.fromRGB(0, 0, 0)
cprompt.BorderSizePixel = 0
cprompt.Position = UDim2.new(0.774999976, -159, 1.10000002, 0)
cprompt.Size = UDim2.new(0, 460, 0, 30)
cprompt.ZIndex = 0

mainbar.Name = "mainbar"
mainbar.Parent = cprompt
mainbar.BackgroundColor3 = Color3.fromRGB(3, 3, 3)
mainbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainbar.BorderSizePixel = 0
mainbar.Size = UDim2.new(0, 460, 0, 307)
mainbar.ZIndex = -1

labels.Name = "labels"
labels.Parent = mainbar
labels.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
labels.BackgroundTransparency = 1.000
labels.BorderSizePixel = 0
labels.Size = UDim2.new(0, 100, 0, 100)

copyrightlabel.Name = "copyrightlabel"
copyrightlabel.Parent = labels
copyrightlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
copyrightlabel.BackgroundTransparency = 1.000
copyrightlabel.BorderSizePixel = 0
copyrightlabel.Position = UDim2.new(0.25, 0, 0.5, 0)
copyrightlabel.Size = UDim2.new(0, 106, 0, 19)
copyrightlabel.Font = Enum.Font.SourceSans
copyrightlabel.Text = "(C) specuwus corp"
copyrightlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
copyrightlabel.TextSize = 14.000
copyrightlabel.TextXAlignment = Enum.TextXAlignment.Left

verlabel.Name = "verlabel"
verlabel.Parent = labels
verlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
verlabel.BackgroundTransparency = 1.000
verlabel.BorderSizePixel = 0
verlabel.Position = UDim2.new(0, 0, 0.300000012, 0)
verlabel.Size = UDim2.new(0, 167, 0, 20)
verlabel.Font = Enum.Font.SourceSans
verlabel.Text = "Command Prompt [Version 1.0]"
verlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
verlabel.TextSize = 14.000
verlabel.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = verlabel
UIPadding.PaddingLeft = UDim.new(0, 5)

input1.Name = "input1"
input1.Parent = mainbar
input1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
input1.BackgroundTransparency = 1.000
input1.BorderSizePixel = 0
input1.Position = UDim2.new(0.319999903, 0, 0.28399995, 0)
input1.Size = UDim2.new(0, 313, 0, 219)
input1.Font = Enum.Font.SourceSans
input1.Text = ""
input1.TextColor3 = Color3.fromRGB(255, 255, 255)
input1.TextSize = 14.000
input1.TextXAlignment = Enum.TextXAlignment.Left
input1.ZIndex = 3
input1.TextYAlignment = Enum.TextYAlignment.Top

predictframe.Name = "predictframe"
predictframe.Parent = mainbar
predictframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
predictframe.BackgroundTransparency = 1.000
predictframe.BorderSizePixel = 0
predictframe.ClipsDescendants = true
predictframe.Position = UDim2.new(0.319999993, 0, 0.273999989, 0)
predictframe.Size = UDim2.new(0, 313, 0, 20)

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
_0.TextStrokeColor3 = Color3.fromRGB(111, 111, 111)
_0.TextXAlignment = Enum.TextXAlignment.Left

sendlabel.Name = "sendlabel"
sendlabel.Parent = mainbar
sendlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sendlabel.BackgroundTransparency = 1.000
sendlabel.BorderSizePixel = 0
sendlabel.Position = UDim2.new(0, 0, 0.270358294, 0)
sendlabel.Size = UDim2.new(0, 147, 0, 20)
sendlabel.Font = Enum.Font.SourceSans
sendlabel.Text = "D:\\Programs\\Convertware>"
sendlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
sendlabel.TextSize = 14.000
sendlabel.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_2.Parent = sendlabel
UIPadding_2.PaddingLeft = UDim.new(0, 5)

mainicon.Name = "mainicon"
mainicon.Parent = cprompt
mainicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainicon.BackgroundTransparency = 1.000
mainicon.BorderColor3 = Color3.fromRGB(27, 42, 53)
mainicon.BorderSizePixel = 0
mainicon.Position = UDim2.new(0.0190624185, 0, 0.230769232, 0)
mainicon.Size = UDim2.new(0.0372960381, 0, 0.5, 0)
mainicon.ZIndex = 3
mainicon.Image = "rbxassetid://6989321252"
mainicon.ScaleType = Enum.ScaleType.Fit

mainname.Name = "mainname"
mainname.Parent = cprompt
mainname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainname.BackgroundTransparency = 1.000
mainname.BorderSizePixel = 0
mainname.Position = UDim2.new(0.376978785, 0, 0.019230783, 0)
mainname.Size = UDim2.new(0.24604243, 0, 0.961538434, 0)
mainname.ZIndex = 4
mainname.Font = Enum.Font.SourceSans
mainname.Text = "Command Prompt"
mainname.TextColor3 = Color3.fromRGB(134, 134, 134)
mainname.TextSize = 14.000

mainclosebutton.Name = "mainclosebutton"
mainclosebutton.Parent = cprompt
mainclosebutton.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
mainclosebutton.BackgroundTransparency = 1.000
mainclosebutton.BorderSizePixel = 0
mainclosebutton.Position = UDim2.new(1, -45, 0, 0)
mainclosebutton.Size = UDim2.new(0, 45, 0, 20)
mainclosebutton.Image = "rbxassetid://8222909762"

mainminimizebutton.Name = "mainminimizebutton"
mainminimizebutton.Parent = cprompt
mainminimizebutton.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
mainminimizebutton.BackgroundTransparency = 1.000
mainminimizebutton.BorderSizePixel = 0
mainminimizebutton.Position = UDim2.new(0.93580246, -45, 0, 0)
mainminimizebutton.Size = UDim2.new(0, 26, 0, 20)
mainminimizebutton.Image = "rbxassetid://8335165877"

cmdsframe.Name = "cmdsframe"
cmdsframe.Parent = CONVERTWARE
cmdsframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
cmdsframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmdsframe.BorderSizePixel = 0
cmdsframe.Position = UDim2.new(0.39, 0, 0.4, 0)
cmdsframe.Size = UDim2.new(0, 405, 0, 30)
cmdsframe.Visible = false
cmdsframe.ZIndex = 0

cmdsbg.Name = "cmdsbg"
cmdsbg.Parent = cmdsframe
cmdsbg.BackgroundColor3 = Color3.fromRGB(3, 3, 3)
cmdsbg.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmdsbg.BorderSizePixel = 0
cmdsbg.Size = UDim2.new(0, 405, 0, 226)
cmdsbg.ZIndex = -1

scrollingcmdsframe.Name = "scrollingcmdsframe"
scrollingcmdsframe.Parent = cmdsbg
scrollingcmdsframe.Active = true
scrollingcmdsframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingcmdsframe.BackgroundTransparency = 1.000
scrollingcmdsframe.BorderSizePixel = 0
scrollingcmdsframe.Position = UDim2.new(0.0163043737, 0, 0.174886242, 0)
scrollingcmdsframe.Size = UDim2.new(0.968, 0,0.796, 0)
scrollingcmdsframe.Visible = true
scrollingcmdsframe.BottomImage = "rbxassetid://6689849479"
scrollingcmdsframe.CanvasSize = UDim2.new(0, 0, 4, 0)
scrollingcmdsframe.MidImage = "rbxassetid://6689849479"
scrollingcmdsframe.TopImage = "rbxassetid://6689849479"
scrollingcmdsframe.ScrollBarImageColor3 = Color3.fromRGB(50, 255, 50)

ScrollingPadding.Name = "ScrollingPadding"
ScrollingPadding.Parent = scrollingcmdsframe
ScrollingPadding.PaddingLeft = UDim.new(0, 1)

ScrollingLIstLayout.Name = "ScrollingLIstLayout"
ScrollingLIstLayout.Parent = scrollingcmdsframe
ScrollingLIstLayout.SortOrder = Enum.SortOrder.LayoutOrder
ScrollingLIstLayout.Padding = UDim.new(0, 5)

cmdsicon.Name = "cmdsicon"
cmdsicon.Parent = cmdsframe
cmdsicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cmdsicon.BackgroundTransparency = 1.000
cmdsicon.BorderColor3 = Color3.fromRGB(27, 42, 53)
cmdsicon.BorderSizePixel = 0
cmdsicon.Position = UDim2.new(0.0190624185, 0, 0.230769232, 0)
cmdsicon.Size = UDim2.new(0.0372960381, 0, 0.5, 0)
cmdsicon.ZIndex = 3
cmdsicon.Image = "rbxassetid://6989321252"
cmdsicon.ScaleType = Enum.ScaleType.Fit

cmdsname.Name = "cmdsname"
cmdsname.Parent = cmdsframe
cmdsname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cmdsname.BackgroundTransparency = 1.000
cmdsname.BorderSizePixel = 0
cmdsname.Position = UDim2.new(0.448717952, 0, 0.019230783, 0)
cmdsname.Size = UDim2.new(0.102564104, 0, 0.961538434, 0)
cmdsname.ZIndex = 4
cmdsname.Font = Enum.Font.SourceSans
cmdsname.Text = "Cmds"
cmdsname.TextColor3 = Color3.fromRGB(134, 134, 134)
cmdsname.TextSize = 14.000

cmdsclosebutton.Name = "cmdsclosebutton"
cmdsclosebutton.Parent = cmdsframe
cmdsclosebutton.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
cmdsclosebutton.BackgroundTransparency = 1.000
cmdsclosebutton.BorderSizePixel = 0
cmdsclosebutton.Position = UDim2.new(1, -45, 0, 0)
cmdsclosebutton.Size = UDim2.new(0, 45, 0, 20)
cmdsclosebutton.Image = "rbxassetid://8222909762"

--// Close Cmds
cmdsclosebutton.MouseButton1Click:Connect(function()
    cmdsframe.Visible = false
end)

--// Close Load
loadclosebutton.MouseButton1Click:Connect(function()
    loadframe.Visible = false
end)

--// Close Prompt
mainclosebutton.MouseButton1Click:Connect(function()
    CONVERTWARE:Destroy()
end)

--// Minimize Prompt
mainminimizebutton.MouseButton1Click:Connect(function()
    if mainbar.Visible == true then
        mainbar.Visible = false
    else
        mainbar.Visible = true
    end
end)

local function CMSG(text)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = text,
        Font = Enum.Font.Gotham,
		Color = Color3.fromRGB(255, 255, 255),
		TextSize = 16,
	});
end


local UIS = game:GetService("UserInputService")
function dragify(Frame)
    dragToggle = nil
    local dragSpeed = 0.125
    dragInput = nil
    dragStart = nil
    local dragPos = nil
    function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)
    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragToggle then
            updateInput(input)
        end
    end)
end

dragify(cprompt)

--// cmds and shit using old/outdated dumbass method from adminware v1.2
local scriptcmds = {
    --// Starting with reanimations
    ["r6"] =  function()
        CMSG(" > Reanimated!")     
	loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua',true))()  
    end,
    
    ["r6f"] =  function()
        CMSG(" > Reanimated with flings on!")       
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Flings.lua',true))() 
    end,

    ["r6d"] =  function()
        CMSG(" > Reanimated with godmode on!")
	loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Perma%20Death.lua',true))()     
    end,

    --// Now control
    ["cmds"] = function()
        cmdsframe.Visible = true
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

    --// And finally converts
    ["sun sword"] =  function()
        CMSG(" > Running Yellow and Black Strong Sun Sword by ???")  
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Yellow%20and%20Black%20Strong%20Sun%20Sword%20Convert.lua',true))()
    end,

    ["huntsman"] =  function()
        CMSG(" > Running Phosphoria Huntsman Knife by ???")  
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Phosphoria%20Huntsman%20Knife%20Convert.lua',true))()
    end,
    
    ["kitchen"] =  function()
        CMSG(" > Running Kitchen Gun by WafflesAreVeryGood")  
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Kitchen%20Gun%20Convert.lua',true))()
    end,
    
    ["nep v"] =  function()
        CMSG(" > Running Neptune/Neptunian V by NoobyGames12")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Neptunian%20V%20Convert.lua',true))()
    end,
    
    ["xester"] =  function()
        CMSG(" > Running Xester V by Supr14")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Xester%20Convert.lua',true))()
    end,
    
    ["krystal v1"] =  function()
        CMSG(" > Running Krystal Dance v1 by The Krystal Team")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Krystal%20Dance%20V1%20Convert.lua',true))()
    end,
    
    ["krystal v2"] =  function()
        CMSG(" > Running Krystal Dance V2 by Supr14")
        CMSG(" [also credits to krystalteam for krystal dances v1]")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Krystal%20Dances%20V2%20Convert.lua',true))()
    end,
    
    ["abyss"] =  function()
        CMSG(" > Running Abyss Eye by Shackluster")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Abyss%20Eye%20Convert.lua',true))()
    end,
    
    ["gale"] =  function()
        CMSG(" > Running Gale Fighter by makhail07 and KillerDarkness0105")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Gale%20Fighter%20Convert.lua',true))()
    end,
    
    ["ender"] =  function()
        CMSG(" > Running Ender by makhail07")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Ender%20Convert.lua',true))()
    end,
    
    ["sonic"] =  function()
        CMSG(" > Running Sonic Script by KillerDarkness0105")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Sonic%20The%20Hedehog%20Convert.lua',true))()
    end,
    
    ["memeus 2"] =  function()
        CMSG(" > Running Memeus 2.0 by makhail07")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Memeus%202.0%20Convert.lua',true))()
    end,
    
    ["memeus 2.5"] =  function()
        CMSG(" > Running Memeus 2.5 originally by makhail07 edited by 2003boobear")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Memeus%202.5%20Convert.lua',true))()
    end,
    
    ["chara"] =  function()
        CMSG(" > Running Chara by Nebula_Zorua")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Chara%20Convert.lua',true))()
    end,
    
    ["sans"] =  function()
        CMSG(" > Running Undertale Sans by Nebula_Zorua")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Undertale%20Sans%20Convert.lua',true))()
    end,
    
    ["caac"] =  function()
        CMSG(" > Running Jump In The CAAC By EthanHong0407")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Jump%20In%20The%20CAAC%20Convert.lua',true))()
    end,
    
    ["ultima"] =  function()
        CMSG(" > Running Dual Ultima by Sugarie Saffron")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Dual%20Ultima%20Convert.lua',true))()
    end,
    
    ["server"] =  function()
        CMSG(" > Running Server Admin by Shackluster")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Server%20Admin%20Convert.lua',true))()
    end,
    
    ["meme"] =  function()
        CMSG(" > Running Meme Animations by 123jl123? [idk]")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Meme%20Animations%20Convert.lua',true))()
    end,
    
    ["magic"] =  function()
        CMSG(" > Running Magic Unknown by KillerDarkness0105")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Magic%20Unknown%20Convert.lua',true))()
    end,
    
    ["sassy"] =  function()
        CMSG(" > Running Sassy Girl by Goodguyaiden")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Sassy%20Girl%20Convert.lua',true))()
    end,

    ["darkheart"] =  function()
        CMSG(" > Running Linked Sword by SezHu")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Linked%20Sword%20Convert.lua',true))()
    end,

    ["hover"] =  function()
        CMSG(" > Running Light HoverBoard by ???")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Hoverboard%20Convert.lua',true))()
    end,

    ["ban"] =  function()
        CMSG(" > Running Ban Hammer by Creterisk")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Ban%20Hammer%20Convert.lua',true))()
    end,

    ["chips"] =  function()
        CMSG(" > Running Chips by Creterisk")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Chips%20Convert.lua',true))()
    end,

    ["chill"] = function()
        CMSG(" > Running Chill by ???")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Chill%20Convert.lua',true))()
    end,
}


--// Run Cmd
input1.FocusLost:connect(function(enterPressed)
    if enterPressed then
        if scriptcmds[input1.Text] then
            scriptcmds[input1.Text]() 
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
    newcmd1.Font = Enum.Font.SourceSans
    newcmd1.Text = CmdText
    newcmd1.TextColor3 = Color3.fromRGB(132, 132, 132)
    newcmd1.TextSize = 14.000
    newcmd1.TextStrokeColor3 = Color3.fromRGB(111, 111, 111)
    newcmd1.TextXAlignment = Enum.TextXAlignment.Left

    newcmd2.Name = CmdText
    newcmd2.Parent = scrollingcmdsframe
    newcmd2.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
    newcmd2.BackgroundTransparency = 0.750
    newcmd2.Size = UDim2.new(0, 374, 0, 25)
    newcmd2.ZIndex = 2
    newcmd2.Font = Enum.Font.SourceSans
    newcmd2.Text = CmdText
    newcmd2.TextColor3 = Color3.fromRGB(50, 255, 50)
    newcmd2.TextSize = 14.000
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

    wait(3)
    cmframe:Destroy()
end

for i, v in	 pairs(scriptcmds) do
    addcmd(i)
end

--// Intro
loadframe.Visible = true
loadframe:TweenPosition(UDim2.new(0.39, 0, 0.4, 0),"Out","Quint",.5)
wait(1)
commandprompttext:TweenPosition(UDim2.new(0, 0,0.181, 0),"Out","Quint",.5)
system32text:TweenPosition(UDim2.new(0, 0,0.381, 0),"Out","Quint",.5)
wait(0.7)
loadingscreenline:TweenPosition(UDim2.new(0.485, -159,0.63, 0),"Out","Quint",.7)
loadingscreenline:TweenSize(UDim2.new(0, 331,0, 1),"Out","Quint",.7)
wait(0.5)
local TS = game:GetService("TweenService")
local transparencytweeninfo = TweenInfo.new(1, Enum.EasingStyle.Sine)
local gamertween1 = TS:Create(accesstext, transparencytweeninfo, {TextTransparency = 0})
local gamertween2 = TS:Create(welcometext, transparencytweeninfo, {TextTransparency = 0})
gamertween1:Play()
wait(1.5)
gamertween2:Play()
wait(1)
loadframe:TweenPosition(UDim2.new(0.5, -184, -1.5, -92),"Out","Quint",.5)
wait(0.5)
cprompt:TweenPosition(UDim2.new(0.775, -159,0.4, -85),"Out","Quint",.5)


--// Make a message
newmessage("Thank you!", "Thank y/glou for executing convertware, there might be some bugs so please dm me if you find one and i'll try my bes to fix it. spec#9001", 3)
