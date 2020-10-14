--default menu
Menu.Spacing();
Menu.Separator();
Menu.Spacing();
Menu.Text("Clantag Manager");
Menu.Spacing();
Menu.Checkbox("Enable Clantag Manager", "EnableManager", false);
Menu.Spacing();
Menu.Text("Other Cheat Clantags");
Menu.Combo("", "OtherCheatTags", {"Select a Tag", "Gamesense Clantag", "Fanta Clantag", "OneTap Clantag", "Millionware Clantag", "Aimware Clantag", "Interium Clantag"}, 0)
Menu.Spacing();
Menu.Checkbox("Enable Clock Clantag", "ClockTag", false);
Menu.Checkbox("12 Hour Clock Time", "12HourClock", false);
Menu.Spacing();
Menu.Checkbox("Enable Custom Clantag", "EnableCustom", false);
Menu.Checkbox("Enable Custom Animated Clantag", "EnableAnimatedCustom", false);
Menu.InputText("Custom Clantag", "CustomWordTag");
Menu.SliderFloat("Animated Tag Delay", "CustomAnimatedDelay", 1.00, 5.00, null, 1.00)
Menu.Spacing();
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
local otherCheatTags = {
    [1] = {
        delay = 255,
        tag = {
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
    },
    [2] = {
        delay = 280,
        tag = {
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
    },
    [3] = {
        delay = 400,
        tag = {
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
    },
    [4] = {
        delay = 280,
        tag = {
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
    },
    [5] = {
        delay = 280,
        tag = {
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
    },
    [6] = {
        delay = 290,
        tag = {
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
    }
}

local tagInfo = {
    ['iteration'] = 0,
    ['tick'] = 0,
    ['enabled'] = false
}

--functions
local a1 = 0;
local a2 = 0;

function DoClanTag(num)
    if (Utils.IsLocal()) then
        local delay = otherCheatTags[num]["delay"]
        local TagArray = otherCheatTags[num]["tag"]
        tagInfo['enabled'] = true
        if (a1 < GetTickCount()) then     
            a2 = a2 + 1
            if (a2 > #TagArray) then a2 = 0 end
            Utils.SetClantag(TagArray[a2])
            a1 = GetTickCount() + delay
        end  
    end
end

local currentTag = ""

function AnimatedCustom()
    if (Utils.IsLocal()) then
        if (a1 < GetTickCount()) then
            local delay = Menu.GetFloat("CustomAnimatedDelay") * 100
            if(currentTag == "") then currentTag = Menu.GetString("CustomWordTag") end  
            a1 = GetTickCount() + delay
            local startChar = string.sub(currentTag, 0, string.len(currentTag) -1)
            local endChar = string.sub(currentTag, string.len(currentTag), string.len(currentTag))
            currentTag = endChar .. startChar
            Utils.SetClantag(currentTag)
        end
    end
end

Hack.RegisterCallback("PaintTraverse", function()
    if Menu.GetBool("EnableManager") then
        if(Menu.GetInt("OtherCheatTags") ~= 0) then DoClanTag(Menu.GetInt("OtherCheatTags"))
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
        elseif(not tagInfo['enabled'] and Menu.GetBool("EnableAnimatedCustom")) then
            if(Menu.GetString("CustomWordTag") ~= "" and Menu.GetFloat("CustomAnimatedDelay") > 0.99) then AnimatedCustom() end
        elseif(not tagInfo['enabled'] and Menu.GetBool("EnableKeypress")) then
            if(Menu.GetString("KeypressW") ~= "" and InputSys.IsKeyDown(87)) then Utils.SetClantag(Menu.GetString("KeypressW")) end
            if(Menu.GetString("KeypressA") ~= "" and InputSys.IsKeyDown(65)) then Utils.SetClantag(Menu.GetString("KeypressA")) end
            if(Menu.GetString("KeypressS") ~= "" and InputSys.IsKeyDown(83)) then Utils.SetClantag(Menu.GetString("KeypressS")) end
            if(Menu.GetString("KeypressD") ~= "" and InputSys.IsKeyDown(68)) then Utils.SetClantag(Menu.GetString("KeypressD")) end
            if(Menu.GetString("KeypressQ") ~= "" and InputSys.IsKeyDown(81)) then Utils.SetClantag(Menu.GetString("KeypressQ")) end
            if(Menu.GetString("KeypressE") ~= "" and InputSys.IsKeyDown(69)) then Utils.SetClantag(Menu.GetString("KeypressE")) end
            if(Menu.GetString("KeypressR") ~= "" and InputSys.IsKeyDown(82)) then Utils.SetClantag(Menu.GetString("KeypressR")) end
        else currentTag = ""
        end
    end
end)
