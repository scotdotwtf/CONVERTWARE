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
        CMSG(" > Running Yellow and Black Strong Sun Sword by ???")  
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Yellow%20and%20Black%20Strong%20Sun%20Sword%20Convert.lua',true))()
    ]],

    ["huntsman"] = [[
        CMSG(" > Running Phosphoria Huntsman Knife by ???")  
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Phosphoria%20Huntsman%20Knife%20Convert.lua',true))()
    ]],
    
    ["kitchen"] = [[
        CMSG(" > Running Kitchen Gun by WafflesAreVeryGood")  
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Kitchen%20Gun%20Convert.lua',true))()
    ]],
    
    ["nep v"] = [[
        CMSG(" > Running Neptune/Neptunian V by NoobyGames12")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Neptunian%20V%20Convert.lua',true))()
    ]],
    
    ["xester"] = [[
        CMSG(" > Running Xester V by Supr14")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Xester%20Convert.lua',true))()
    ]],
    
    ["krystal v1"] = [[
        CMSG(" > Running Krystal Dance v1 by The Krystal Team")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Krystal%20Dance%20V1%20Convert.lua',true))()
    ]],
    
    ["krystal v2"] = [[
        CMSG(" > Running Krystal Dance V2 by Supr14")
        CMSG(" [also credits to krystalteam for krystal dances v1]")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Krystal%20Dances%20V2%20Convert.lua',true))()
    ]],
    
    ["abyss"] = [[
        CMSG(" > Running Abyss Eye by Shackluster")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Abyss%20Eye%20Convert.lua',true))()
    ]],
    
    ["gale"] = [[
        CMSG(" > Running Gale Fighter by makhail07 and KillerDarkness0105")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Gale%20Fighter%20Convert.lua',true))()
    ]],
    
    ["ender"] = [[
        CMSG(" > Running Ender by makhail07")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Ender%20Convert.lua',true))()
    ]],
    
    ["sonic"] = [[
        CMSG(" > Running Sonic Script by KillerDarkness0105")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Sonic%20The%20Hedehog%20Convert.lua',true))()
    ]],
    
    ["memeus 2"] = [[
        CMSG(" > Running Memeus 2.0 by makhail07")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Memeus%202.0%20Convert.lua',true))()
    ]],
    
    ["memeus 2.5"] = [[
        CMSG(" > Running Memeus 2.5 originally by makhail07 edited by 2003boobear")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Memeus%202.5%20Convert.lua',true))()
    ]],
    
    ["chara"] = [[
        CMSG(" > Running Chara by Nebula_Zorua")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Chara%20Convert.lua',true))()
    ]],
    
    ["sans"] = [[
        CMSG(" > Running Undertale Sans by Nebula_Zorua")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Undertale%20Sans%20Convert.lua',true))()
    ]],
    
    ["caac"] = [[
        CMSG(" > Running Jump In The CAAC By EthanHong0407")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Jump%20In%20The%20CAAC%20Convert.lua',true))()
    ]],
    
    ["ultima"] = [[
        CMSG(" > Running Dual Ultima by Sugarie Saffron")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Dual%20Ultima%20Convert.lua',true))()
    ]],
    
    ["server"] = [[
        CMSG(" > Running Server Admin by Shackluster")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Server%20Admin%20Convert.lua',true))()
    ]],
    
    ["meme"] = [[
        CMSG(" > Running Meme Animations by 123jl123? [idk]")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Meme%20Animations%20Convert.lua',true))()
    ]],
    
    ["magic"] = [[
        CMSG(" > Running Magic Unknown by KillerDarkness0105")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Magic%20Unknown%20Convert.lua',true))()
    ]],
    
    ["sassy"] = [[
        CMSG(" > Running Sassy Girl by Goodguyaiden")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Sassy%20Girl%20Convert.lua',true))()
    ]],

    ["darkheart"] = [[
        CMSG(" > Running Linked Sword by SezHu")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Linked%20Sword%20Convert.lua',true))()
    ]],

    ["hover"] = [[
        CMSG(" > Running Light HoverBoard by ???")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Hoverboard%20Convert.lua',true))()
    ]],

    ["ban"] = [[
        CMSG(" > Running Ban Hammer by Creterisk")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Ban%20Hammer%20Convert.lua',true))()
    ]],

    ["chips"] = [[
        CMSG(" > Running Chips by Creterisk")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Chips%20Convert.lua',true))()
    ]],

    ["chill"] = [[
        CMSG(" > Running Chill by ???")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Chill%20Convert.lua',true))()
    ]],
}
