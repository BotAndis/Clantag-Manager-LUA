--default menu
Menu.Spacing()
Menu.Separator()
Menu.Spacing()
Menu.Text("Clantag Manager");
Menu.Spacing()
Menu.Spacing()
Menu.Text("Other Cheat Clantags");
Menu.Checkbox("Enable Gamesense Clantag", "EnableGamesense", false);
Menu.Checkbox("Enable Fanta Clantag", "EnableFanta", false);
Menu.Checkbox("Enable OneTap Clantag", "EnableOneTap", false);
Menu.Checkbox("Enable Millionware Clantag", "EnableMillionware", false);
Menu.Checkbox("Enable Aimware Clantag", "EnableAimware", false);
Menu.Checkbox("Enable Interium Clantag", "EnableInterium", false);
Menu.Spacing()
Menu.Text("Other Random Clantags");
Menu.Checkbox("Enable [VALVE] Clantag", "EnableValve", false);
Menu.Checkbox("Enable Animated Numbers Clantag", "EnableAnimatedNumbers", false);
Menu.Spacing()

local a1 = 0;
local a2 = 0;

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
    [6] = "IN______",
    [7] = "I_______",
    [8] = "________",
    [9] = "I_______",
    [10] = "IN______",
    [11] = "INT_____",
    [12] = "INTE____",
    [13] = "INTER___",
    [14] = "INTERI__",
    [15] = "INTERIU_",
    [16] = "INTERIUM"
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

function DoClanTag(TagArray, delay)
    if (Utils.IsLocal()) then
        if (a1 < GetTickCount()) then     
            a2 = a2 + 1
            if (a2 > #TagArray) then
                a2 = 0
            end
            Utils.SetClantag(TagArray[a2])
            a1 = GetTickCount() + delay
        end  
    end
end

local enableClockTag = false;


Hack.RegisterCallback("PaintTraverse", function()
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
        DoClanTag(InteriumTag, 250);
    elseif(Menu.GetBool("EnableValve")) then
        Utils.SetClantag("[VALVᴱ]");
    elseif(Menu.GetBool("EnableAnimatedNumbers")) then
        DoClanTag(AnimatedNumbersTag, 150)
    end
end)

--[[
Attempted animated clock tag (lags game and doesn't update smh):

Menu.Checkbox("Enable Clock Clantag", "EnableClock", false);

elseif(Menu.GetBool("EnableClock")) then
    enableClockTag = true;
    local min = GetTimeMin();
    local sec = GetTimeSec()
    while enableClockTag do
        local time = "[" .. GetTimeHour() .. ":" .. min .. ":" .. sec .. "]"
        Utils.SetClantag(time);
        sec = sec + 1;
        if(sec == 60) then
            min = min + 1;
            sec = 0;
        end
        Menu.sleep(1000);
    end
]]--
