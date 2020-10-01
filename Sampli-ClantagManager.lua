--default menu
Menu.Spacing()
Menu.Separator()
Menu.Spacing()
Menu.Text("Clantag Manager");
Menu.Spacing()
Menu.Spacing()
Menu.Text("Other Cheat Clantags");
Menu.Checkbox("Enable Gamesense Clantag", "EnableGamesense", tagHandler[0].enabled);
Menu.Checkbox("Enable Fanta Clantag", "EnableFanta", tagHandler[1].enabled);
Menu.Checkbox("Enable OneTap Clantag", "EnableOneTap", tagHandler[2].enabled);
Menu.Checkbox("Enable Millionware Clantag", "EnableMillionware", tagHandler[3].enabled);
Menu.Checkbox("Enable Aimware Clantag", "EnableAimware", tagHandler[4].enabled);
Menu.Checkbox("Enable Interium Clantag", "EnableInterium", tagHandler[5].enabled);
Menu.Spacing()
Menu.Text("Other Random Clantags");
Menu.Checkbox("Enable [VALVE] Clantag", "EnableValve", tagHandler[7].enabled);
Menu.Checkbox("Enable Animated Numbers Clantag", "EnableAnimatedNumbers", tagHandler[6].enabled);
Menu.Checkbox("Enable Clock Clantag", "EnableClockTag", false);
Menu.Spacing()
Menu.Text("Change Clantag On Key")
Menu.Checkbox("Enable Change Clantag on Keypress", "EnableKeypress", false);
Menu.InputText("W", "KeypressW");
Menu.InputText("A", "KeypressA");
Menu.InputText("S", "KeypressS");
Menu.InputText("D", "KeypressD");
Menu.InputText("Mouse1", "KeypressMouse1");
Menu.InputText("Mouse2", "KeypressMouse2");

local ClanTags = {
    ['gamesense'] = {
        [0]  =  "                  ",
        [1]  =  "                 g",
        [2]  =  "                ga",
        [3]  =  "               gam",
        [4]  =  "              game",
        [5]  =  "             games",
        [6]  =  "            gamese",
        [7]  =  "           gamesen",
        [8]  =  "          gamesens",
        [9]  =  "         gamesense",
        [10]  =  "        gamesense ",
        [11]  =  "        gamesense ",
        [12]  =  "       gamesense  ",
        [13]  =  "      gamesense   ",
        [14]  =  "     gamesense    ",
        [15]  =  "    gamesense     ",
        [16]  =  "   gamesense      ",
        [17]  =  "  gamesense       ",
        [18]  =  " gamesense        ",
        [19]  =  "gamesense         ",
        [20]  =  "amesense          ",
        [21]  =  "mesense           ",
        [22]  =  "esense            ",
        [23]  =  "sense             ",
        [24]  =  "sens              ",
        [25]  =  "sen               ",
        [26]  =  "se                ",
        [27]  =  "s                 "
    },
    ['fanta'] = {
        [0] = "               s",
        [1] = "              si",
        [2] = "             sip",
        [3] = "            sipp",
        [4] = "           sippi",
        [5] = "          sippin",
        [6] = "         sippin'",
        [7] = "        sippin' ",
        [8] = "       sippin' f",
        [9] = "      sippin' fa",
        [10] = "     sippin' fan",
        [11] = "    sippin' fant",
        [12] = "   sippin' fanta",
        [13] = "  sippin' fanta ",
        [14] = " sippin' fanta  ",
        [15] = "sippin' fanta   ",
        [16] = "ippin' fanta    ",
        [17] = "ppin' fanta     ",
        [18] = "pin' fanta      ",
        [19] = "in' fanta       ",
        [20] = "n' fanta        ",
        [21] = "' fanta         ",
        [22] = " fanta          ",
        [23] = "fanta           ",
        [24] = "anta            ",
        [25] = "nta             ",
        [26] = "ta              ",
        [27] = "a               ",
        [28] = "                ",
    },
    ['onetap'] = {
        [0] = "onetap.su ",
        [1] = "u onetap.s",
        [2] = "us onetap.",
        [3] = ".su onetap",
        [4] = "p.su oneta",
        [5] = "ap.su onet",
        [6] = "tap.su one",
        [7] = "etap.su on",
        [8] = "netap.su o",
    },
    ['millionware'] = {
        [0] = "$            ",
        [1] = "$          mi",
        [2] = "$         mil",
        [3] = "$        mill",
        [4] = "$       milli",
        [5] = "$      millio",
        [6] = "$     million",
        [7] = "$    millionw",
        [8] = "$   millionwa",
        [9] = "$  millionwar",
        [10] = "$ millionware",
        [11] = "$ millionware",
        [12] = "$ illionware ",
        [13]= "$ llionware  ",
        [14] = "$ lionware   ",
        [15] = "$ ionware    ",
        [16] = "$ onware     ",
        [17] = "$ nware      ",
        [18] = "$ ware       ",
        [19] = "$ are        ",
        [20] = "$ re         ",
        [21] = "$ e          ",
        [22] = "$            ",
    },
    ['aimware'] = {
        [0] = "           ",
        [1] = "          A",
        [2] = "         AI",
        [3] = "        AIM",
        [4] = "       AIMW",
        [5] = "      AIMWA",
        [6] = "     AIMWAR",
        [7] = "    AIMWARE",
        [8] = "   AIMWARE.",
        [9] = "  AIMWARE.N",
        [10] = " AIMWARE.NE",
        [11] = "AIMWARE.NET",
        [12] = "IMWARE.NET ",
        [13] = "MWARE.NET  ",
        [14] = "WARE.NET   ",
        [15] = "ARE.NET    ",
        [16] = "RE.NET     ",
        [17] = "E.NET       ",
        [18] = ".NET       ",
        [19] = "NET        ",
        [20] = "ET         ",
        [21] = "T          ",
    },
    ['interium'] = {
        [0] = "INTERIUM",
        [1] = "INTERIU_",
        [2] = "INTERI__",
        [3] = "INTER___",
        [4] = "INTE____",
        [5] = "INT_____",
        [6] = "INTE____",
        [7] = "INTER___",
        [8] = "INTERI__",
        [9] = "INTERIU_",
        [10] = "INTERIUM"
    },
    ['numbers'] = {
        [0]  =  "① ",
        [1]  =  "② ",
        [2]  =  "③ ",
        [3]  =  "④ ",
        [4]  =  "⑤ ",
        [5]  =  "⑥ ",
        [6]  =  "⑦ ",
        [7]  =  "⑧ ",
        [8]  =  "⑨ ",
        [9]  =  "⑩ "
    },
    ['valve'] = {
        [0] = "[VALVᴱ]"
    }
}

local tagHandler = {
    [0] = {'speed' = 255, 'array' = ClanTags['gamesense'], 'enabled' = false},
    [1] = {'speed' = 280, 'array' = ClanTags['fanta'], 'enabled' = false},
    [2] = {'speed' = 400, 'array' = ClanTags['onetap'], 'enabled' = false},
    [3] = {'speed' = 280, 'array' = ClanTags['millionware'], 'enabled' = false},
    [4] = {'speed' = 280, 'array' = ClanTags['aimware'], 'enabled' = false},
    [5] = {'speed': 450, 'array' = ClanTags['interium'], 'enabled' = false},
    [6] = {'speed': 300, 'array' = ClanTags['numbers'], 'enabled' = false},
    [7] = {'speed': 0, 'array' = ClanTags['valve'], 'enabled' = false}
}

local tagInfo = {
    ['iteration'] = 0,
    ['tick'] = 0,
    ['enabled'] = false
}

function DoClanTag(tag)
    if (Utils.IsLocal()) then
        if (tagInfo['iteration'] < GetTickCount()) then     
            tagInfo['iteration'] = tagInfo['iteration'] + 1
            if (tagInfo['iteration'] > #tag.array) then tagInfo['iteration'] = 0 end
            Utils.SetClantag(tag.array[a2])
            tagInfo['tick'] = GetTickCount() + tag.speed
        end  
    end
end

Hack.RegisterCallback("PaintTraverse", function()
    for i=0,#tagHandler do
        if(tagHandler[i].enabled) then
            DoClanTag(tagHandler[i])
            tagInfo['enabled'] = true
            break
        end
        if(i == #tagHandler and not tagHandler[i].enabled) then tagInfo['enabled'] = false end;
    end
end)

local clockInfo = {
    ['hour'] = GetTimeHour(),
    ['minute'] = GetTimeMin(),
    ['second'] = GetTimeSec()
}

Hack.RegisterCallback("CreateMove", function()
    if(not tagInfo['enabled'] and Menu.GetBool("EnableClockTag")) then
        if(clockInfo['second'] == 60) then
            clockInfo['second'] = 0;
            clockInfo['minute'] = clockInfo['minute'] + 1;
        end
        if(clockInfo['minute'] == 60) then
            clockInfo['minute'] = 0;
            clockInfo['hour'] = clockInfo['hour'] + 1;
        end
        local time = "[" .. clockInfo['hour'] .. ":" .. clockInfo['minute'] .. ":" .. clockInfo['second'] .. "]"
        Utils.SetClantag(time);
        clockInfo['second'] = clockInfo['second'] + 1;
    end
    if(not tagInfo['enabled'] and not Menu.GetBool("EnableClockTag") and Menu.GetBool("EnableKeypress")) then
        if(Menu.GetString("KeypressW") ~= "" and InputSys.IsKeyDown(87)) then Utils.SetClantag(Menu.GetString("KeypressW")) end
        if(Menu.GetString("KeypressA") ~= "" and InputSys.IsKeyDown(65)) then Utils.SetClantag(Menu.GetString("KeypressA")) end
        if(Menu.GetString("KeypressS") ~= "" and InputSys.IsKeyDown(83)) then Utils.SetClantag(Menu.GetString("KeypressS")) end
        if(Menu.GetString("KeypressD") ~= "" and InputSys.IsKeyDown(68)) then Utils.SetClantag(Menu.GetString("KeypressD")) end
end)

--[[
if(Menu.GetBool("EnableGamesense")) then
        DoClanTag(GamesenseTag, 255);
    elseif(Menu.GetBool("EnableFanta")) then
        DoClanTag(FantaTag, 280);
    elseif(Menu.GetBool("EnableOneTap")) then
        DoClanTag(OneTapTag, 400);
    elseif(Menu.GetBool("EnableMillionware")) then
        DoClanTag(MillionwareTag, 280);
    elseif(Menu.GetBool("EnableAimware")) then
        DoClanTag(AimwareTag, 280);
    elseif(Menu.GetBool("EnableInterium")) then
        DoClanTag(InteriumTag, 450);
    elseif(Menu.GetBool("EnableAnimatedNumbers")) then
        DoClanTag(AnimatedNumbersTag, 150)
    end
]]--
