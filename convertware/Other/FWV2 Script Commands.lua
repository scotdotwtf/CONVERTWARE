--// Same as script commands just no reanim (this is made for filterware ui v2)
local function CMSG(text)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = text,
        Font = Enum.Font.Gotham,
		Color = Color3.fromRGB(255, 255, 255),
		TextSize = 16,
	});
end

scriptcmds = {
    ["sun sword"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Yellow%20and%20Black%20Strong%20Sun%20Sword%20Convert.lua',true))()
    ]],

    ["huntsman"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Phosphoria%20Huntsman%20Knife%20Convert.lua',true))()
    ]],
    
    ["kitchen"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Kitchen%20Gun%20Convert.lua',true))()
    ]],
    
    ["nep v"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Neptunian%20V%20Convert.lua',true))()
    ]],
    
    ["xester"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Xester%20Convert.lua',true))()
    ]],
    
    ["krystal v1"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Krystal%20Dance%20V1%20Convert.lua',true))()
    ]],
    
    ["krystal v2"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Krystal%20Dances%20V2%20Convert.lua',true))()
    ]],
    
    ["abyss"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Abyss%20Eye%20Convert.lua',true))()
    ]],
	
    ["abyss d"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Abyss%20Eye%20Demonic%20Convert.lua',true))()
    ]],	
    
    ["gale"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Gale%20Fighter%20Convert.lua',true))()
    ]],
    
    ["ender"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Ender%20Convert.lua',true))()
    ]],
    
    ["sonic"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Sonic%20The%20Hedehog%20Convert.lua',true))()
    ]],
    
    ["memeus 2"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Memeus%202.0%20Convert.lua',true))()
    ]],
    
    ["memeus 2.5"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Memeus%202.5%20Convert.lua',true))()
    ]],
    
    ["chara"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Chara%20Convert.lua',true))()
    ]],
    
    ["sans"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Undertale%20Sans%20Convert.lua',true))()
    ]],
    
    ["caac"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Jump%20In%20The%20CAAC%20Convert.lua',true))()
    ]],
    
    ["ultima"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Dual%20Ultima%20Convert.lua',true))()
    ]],
    
    ["server"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Server%20Admin%20Convert.lua',true))()
    ]],
    
    ["meme"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Meme%20Animations%20Convert.lua',true))()
    ]],
    
    ["magic"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Magic%20Unknown%20Convert.lua',true))()
    ]],
    
    ["sassy"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Sassy%20Girl%20Convert.lua',true))()
    ]],

    ["darkheart"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Linked%20Sword%20Convert.lua',true))()
    ]],

    ["hover"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Hoverboard%20Convert.lua',true))()
    ]],

    ["ban"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Ban%20Hammer%20Convert.lua',true))()
    ]],

    ["chips"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Chips%20Convert.lua',true))()
    ]],

    ["chill"] = [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Chill%20Convert.lua',true))()
    ]],
	
    ["nebula"] = [[
	loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Nebula%20Star%20Glitcher%20Convert.lua',true))()
    ]],
	
    ["hacker"] = [[
	loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Hacker%20X%20Paid%20Convert.lua',true))()
    ]],
	
    ["hacker f"] = [[
	loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Hacker%20X%20Convert.lua',true))()
    ]],
	
    ["distorted "] = [[
	loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/The%20Distorted%20Convert.lua',true))()
    ]],
}
