--default menu
Menu.Spacing()
Menu.Separator()
Menu.Spacing()
Menu.Text("Clantag Manager");
Menu.Spacing()
Menu.Checkbox("Enable Clantag Manager", "EnableManager", false);
Menu.Spacing()
Menu.Text("Other Cheat Clantags");
Menu.Checkbox("Enable Gamesense Clantag", "EnableGamesense", false);
Menu.Checkbox("Enable Fanta Clantag", "EnableFanta", false);
Menu.Checkbox("Enable OneTap Clantag", "EnableOnetap", false);
Menu.Checkbox("Enable Millionware Clantag", "EnableMillion", false);
Menu.Checkbox("Enable Aimware Clantag", "EnableAimware", false);
Menu.Checkbox("Enable Interium Clantag", "EnableInterium", false);
Menu.Spacing()
Menu.Text("Other Random Clantags");
Menu.Checkbox("Enable Animated Numbers Clantag", "EnableNumbers", false);
Menu.Checkbox("Enable [VALVE] Clantag", "EnableValve", false);
Menu.Spacing()
Menu.Checkbox("Enable Clock Clantag", "ClockTag", false);
Menu.Checkbox("12 Hour Clock Time", "12HourClock", false);
Menu.Spacing()
Menu.Checkbox("Enable Custom Clantag", "EnableCustom", false);
Menu.InputText("Clantag", "CustomWordTag");
Menu.Spacing()
Menu.Text("Change Clantag On Key");
Menu.Checkbox("Enable Change Clantag on Keypress", "EnableKeypress", false);
Menu.InputText("W", "KeypressW");
Menu.InputText("A", "KeypressA");
Menu.InputText("S", "KeypressS");
Menu.InputText("D", "KeypressD");
Menu.InputText("Q", "KeypressQ");
Menu.InputText("E", "KeypressE");
Menu.InputText("R", "KeypressR");

-- all the clantag info
local GamesenseTag = {
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
}

local FantaTag = {
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
}

local OneTapTag = {
    [0] = "onetap.su ",
    [1] = "u onetap.s",
    [2] = "us onetap.",
    [3] = ".su onetap",
    [4] = "p.su oneta",
    [5] = "ap.su onet",
    [6] = "tap.su one",
    [7] = "etap.su on",
    [8] = "netap.su o",
}

local MillionwareTag = {
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
}

local AimwareTag = {
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
}

local InteriumTag = {
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
}

local AnimatedNumbersTag = {
    [0]  =  "① ",
    [1]  =  "② ",
    [2]  =  "③ ",
    [3]  =  "④ ",
    [4]  =  "⑤ ",
    [5]  =  "⑥ ",
    [6]  =  "⑦ ",
    [7]  =  "⑧ ",
    [8]  =  "⑨ ",
    [9]  =  "⑩ ",
}

local tagHandler = {
    [0] = {speed = 255, array = GamesenseTag},
    [1] = {speed = 280, array = FantaTag},
    [2] = {speed = 400, array = OneTapTag},
    [3] = {speed = 280, array = MillionwareTag},
    [4] = {speed = 280, array = AimwareTag},
    [5] = {speed = 450, array = InteriumTag},
    [6] = {speed = 300, array = AnimatedNumbersTag},
}

local tagInfo = {
    ['iteration'] = 0,
    ['tick'] = 0,
    ['enabled'] = false
}

--functions
local a1 = 0;
local a2 = 0;

function DoClanTag(TagArray, delay)
    if (Utils.IsLocal()) then
        tagInfo['enabled'] = true
        if (a1 < GetTickCount()) then     
            a2 = a2 + 1
            if (a2 > #TagArray) then a2 = 0 end
            Utils.SetClantag(TagArray[a2])
            a1 = GetTickCount() + delay
        end  
    end
end

Hack.RegisterCallback("PaintTraverse", function()
    if Menu.GetBool("EnableManager") then
        if Menu.GetBool("EnableGamesense") then DoClanTag(GamesenseTag, 255)  
        elseif Menu.GetBool("EnableFanta") then DoClanTag(FantaTag, 280)
        elseif Menu.GetBool("EnableOnetap") then DoClanTag(OneTapTag, 400)
        elseif Menu.GetBool("EnableMillion") then DoClanTag(MillionwareTag, 280)
        elseif Menu.GetBool("EnableAimware") then DoClanTag(AimwareTag, 280)
        elseif Menu.GetBool("EnableInterium") then DoClanTag(InteriumTag, 450)
        elseif Menu.GetBool("EnableNumbers") then DoClanTag(AnimatedNumbersTag, 300)
        else tagInfo['enabled'] = false end
    end
end)

Hack.RegisterCallback("CreateMove", function()
    if(Menu.GetBool("EnableManager")) then
        if(not tagInfo['enabled'] and Menu.GetBool("EnableValve")) then Utils.SetClantag("[VALVᴱ]")
        elseif(not tagInfo['enabled'] and Menu.GetBool("ClockTag")) then
            UpdateGetTime()
            local hour = GetTimeHour()
            local minute = GetTimeMin()
            local second = GetTimeSec()
            if(Menu.GetBool("12HourClock") and hour > 12) then hour = hour - 12 end
            if(hour < 10) then hour = "0"..hour end
            if(minute < 10) then minute = "0"..hour end
            if(second<10) then second = "0"..second end
            local time = "[" .. hour .. ":" .. minute .. ":" .. second .. "]";
            Utils.SetClantag(time);
        elseif(not tagInfo['enabled'] and Menu.GetBool("EnableCustom")) then
            if(Menu.GetString("CustomWordTag") ~= "") then Utils.SetClantag(Menu.GetString("CustomWordTag")) end
        elseif(not tagInfo['enabled'] and Menu.GetBool("EnableKeypress")) then
            if(Menu.GetString("KeypressW") ~= "" and InputSys.IsKeyDown(87)) then Utils.SetClantag(Menu.GetString("KeypressW")) end
            if(Menu.GetString("KeypressA") ~= "" and InputSys.IsKeyDown(65)) then Utils.SetClantag(Menu.GetString("KeypressA")) end
            if(Menu.GetString("KeypressS") ~= "" and InputSys.IsKeyDown(83)) then Utils.SetClantag(Menu.GetString("KeypressS")) end
            if(Menu.GetString("KeypressD") ~= "" and InputSys.IsKeyDown(68)) then Utils.SetClantag(Menu.GetString("KeypressD")) end
            if(Menu.GetString("KeypressQ") ~= "" and InputSys.IsKeyDown(81)) then Utils.SetClantag(Menu.GetString("KeypressQ")) end
            if(Menu.GetString("KeypressE") ~= "" and InputSys.IsKeyDown(69)) then Utils.SetClantag(Menu.GetString("KeypressE")) end
            if(Menu.GetString("KeypressR") ~= "" and InputSys.IsKeyDown(82)) then Utils.SetClantag(Menu.GetString("KeypressR")) end
        end
    end
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
