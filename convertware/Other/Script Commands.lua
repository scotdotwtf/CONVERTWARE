local function CMSG(text)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = text,
        Font = Enum.Font.Gotham,
		Color = Color3.fromRGB(255, 255, 255),
		TextSize = 16,
	});
end

scriptcmds = {
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
	
    ["abyss d"] = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Abyss%20Eye%20Demonic%20Convert.lua',true))()
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
	
    ["nebula"] = function()
	    CMSG(" > Running Nebula Star Glitcher by Nebula_Zorua")
	    loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Nebula%20Star%20Glitcher%20Convert.lua',true))()
    end,

    ["hacker"] = function()
	    CMSG(" > Running Hacker X by InfiniteOneWithdank")
	    loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Hacker%20X%20Paid%20Convert.lua',true))()
    end,
	
     ["hacker f"] = function()
	    CMSG(" > Running Hacker X by InfiniteOneWithdank")
	    loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Hacker%20X%20Convert.lua',true))()
    end,
	
     ["distorted"] = function()
	    CMSG(" > Running The Distorted by Makhai07")
	    loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/The%20Distorted%20Convert.lua',true))()
    end,

    ["voodoo"] = function()
        CMSG(" > Running Voodoo Child by Creterisk")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Voodoo%20Child%20Convert.lua',true))()
    end,

    ["voodoo f"] = function()
        CMSG(" > Running Voodoo Child Free by Creterisk")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Voodoo%20Child%20Free%20Convert.lua',true))()
    end,
	
    ["cart"] = function()
	CMSG(" > Running Shopping Cart by Rufus")
	CMSG(" > *Warning, 90% of this is FD meaning no one will see you pick people up")
	loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Shopping%20Cart%20Convert.lua',true))()
    end,
}
