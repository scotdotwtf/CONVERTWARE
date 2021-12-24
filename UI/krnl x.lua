--// Start
local CONVERTWARE = Instance.new("ScreenGui")
local mainbar = Instance.new("Frame")
local MainBarStroke = Instance.new("Frame")
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
mainbar.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
mainbar.BorderSizePixel = 0
mainbar.Position = UDim2.new(0.38385421, 0, 1, 0)
mainbar.Size = UDim2.new(0.231770828, 0, 0.0268518515, 0)
mainbar.ClipsDescendants = true
mainbar.Visible = false

MainBarStroke.Name = "MainBarStroke"
MainBarStroke.Parent = mainbar
MainBarStroke.BackgroundColor3 = Color3.fromRGB(30, 97, 208)
MainBarStroke.BorderSizePixel = 0
MainBarStroke.Size = UDim2.new(1, 0, 0.103448279, 0)

input1.Name = "input"
input1.Parent = mainbar
input1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
input1.BackgroundTransparency = 1.000
input1.BorderColor3 = Color3.fromRGB(27, 42, 53)
input1.Position = UDim2.new(0.0589639395, 0, 0.103448279, 0)
input1.Size = UDim2.new(0, 417, 0, 25)
input1.ZIndex = 3
input1.Font = Enum.Font.RobotoMono
input1.PlaceholderColor3 = Color3.fromRGB(30, 126, 237)
input1.PlaceholderText = "convertware.exe | krnl x"
input1.Text = ""
input1.TextColor3 = Color3.fromRGB(30, 126, 237)
input1.TextSize = 14.000
input1.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
input1.TextWrapped = true
input1.TextXAlignment = Enum.TextXAlignment.Left

sendlabel.Name = "sendlabel"
sendlabel.Parent = mainbar
sendlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sendlabel.BackgroundTransparency = 1.000
sendlabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
sendlabel.Position = UDim2.new(0, 0, 0.103448279, 0)
sendlabel.Size = UDim2.new(0.058963947, 0, 0.896551728, 0)
sendlabel.ZIndex = 4
sendlabel.Font = Enum.Font.Arial
sendlabel.Text = ">"
sendlabel.TextColor3 = Color3.fromRGB(30, 126, 237)
sendlabel.TextSize = 14.000

predictframe.Name = "predictframe"
predictframe.Parent = mainbar
predictframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
predictframe.BackgroundTransparency = 1.000
predictframe.BorderSizePixel = 0
predictframe.Position = UDim2.new(0.0590000004, 0, 0.103, 0)
predictframe.Size = UDim2.new(0, 417, 0, 25)

CmdsListLayout.Name = "CmdsListLayout"
CmdsListLayout.Parent = predictframe
CmdsListLayout.SortOrder = Enum.SortOrder.Name

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
scrollingcmdsframe.CanvasSize = UDim2.new(0, 0, 5, 0)
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
    mainbar:TweenPosition(UDim2.new(0.38385421, 0, 1, 0),"In","Quint",.3)
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
            mainbar:TweenPosition(UDim2.new(0.38385421, 0, 0.875, 0),"Out","Quint",.3)
        else
            mainbar:TweenPosition(UDim2.new(0.38385421, 0, 1, 0),"In","Quint",.3)
            input1:ReleaseFocus()
            wait(0.3)
            input1.Text = ""
            mainbar.Visible = false
        end
	end
end)

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
    newcmd1.TextStrokeColor3 = Color3.fromRGB(111, 111, 111)
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

--// Update Results
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
