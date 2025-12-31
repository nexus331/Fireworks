-- ==============================
-- FIREWORK SHOW SERVER
-- CC:Tweaked (Minecraft)
-- ==============================

-- PROGRAM INFO --
local ver = "0.4"
local manf = "LTi Technologies"
local compid = os.getComputerID()

-- RECEIVER IDS --
local re1 = 1
local re2 = 2
local re3 = 3
local re4 = 4
local re5 = 5
local rapidrec = 7

-- ==============================
-- FIREWORK FUNCTIONS
-- ==============================

local function rec1f1() rednet.send(re1,"f1") end
local function rec1f2() rednet.send(re1,"f2") end
local function rec1f3() rednet.send(re1,"f3") end
local function rec1f4() rednet.send(re1,"f4") end
local function rec1f5() rednet.send(re1,"f5") end

local function rec2f1() rednet.send(re2,"f1") end
local function rec2f2() rednet.send(re2,"f2") end
local function rec2f3() rednet.send(re2,"f3") end
local function rec2f4() rednet.send(re2,"f4") end
local function rec2f5() rednet.send(re2,"f5") end

local function rec3f1() rednet.send(re3,"f1") end
local function rec3f2() rednet.send(re3,"f2") end
local function rec3f3() rednet.send(re3,"f3") end
local function rec3f4() rednet.send(re3,"f4") end
local function rec3f5() rednet.send(re3,"f5") end

local function rec4f1() rednet.send(re4,"f1") end
local function rec4f2() rednet.send(re4,"f2") end
local function rec4f3() rednet.send(re4,"f3") end
local function rec4f4() rednet.send(re4,"f4") end
local function rec4f5() rednet.send(re4,"f5") end

local function rec5f1() rednet.send(re5,"f1") end
local function rec5f2() rednet.send(re5,"f2") end
local function rec5f3() rednet.send(re5,"f3") end
local function rec5f4() rednet.send(re5,"f4") end
local function rec5f5() rednet.send(re5,"f5") end

local function rapid() rednet.send(rapidrec,"rapid") end

-- ==============================
-- SYSTEM INIT
-- ==============================

shell.run("clear")
print("Firework Show Server")
print("Version:", ver)
print("By:", manf)

rednet.open("top")
print("Network Connected | ID:", compid)

-- MUSIC START SIGNAL --
redstone.setOutput("back", true)
sleep(3)
redstone.setOutput("back", false)

print("Now Playing: 2026 Luxemburg New Year Countdown Mix")
print("Firework Launch Sequence Initiated")

-- ==============================
-- TIMING SYSTEM (NO DRIFT)
-- ==============================

local showStart = os.clock()

local function waitUntil(t)
    local now = os.clock() - showStart
    if t > now then sleep(t - now) end
end

-- ==============================
-- FIREWORK CUES (SECONDS)
-- ==============================

local cues = {

    {60.0, function() rapid(); rec1f1(); rec2f5() end},
    {64.0, function() rec2f5(); rec1f1() end},
    {68.0, function() rec2f5() end},

    {69.0, function() rec4f1(); rec3f1() end},
    {70.0, function() rec4f1(); rec3f1() end},
    {71.0, function() rec4f1(); rec3f1() end},

    {74.0, function() rec1f1(); rec2f5() end},
    {78.0, function() rec1f1() end},

    {82.0, function() rapid(); rec2f1() end},
    {90.0, function() rec1f1() end},

    {101.0, function() rec2f5(); rec3f1(); rec4f1() end},
    {105.0, function() rec2f5(); rec1f1() end},
    {108.0, function() rec2f5() end},
    {112.0, function() rec4f5() end},
    {113.0, function() rec3f1() end},

    {117.0, function() rec2f1(); rec4f1(); rec3f1(); rec1f1() end},

    {120.0, function() rapid(); rec2f1() end},
    {123.0, function() rec4f1(); rec2f5() end},

    {127.0, function() rec2f5() end},
    {131.0, function() rec2f5() end},
    {135.0, function() rec2f5() end},

    {146.0, function() rec1f1(); rec3f5(); rec4f5() end},
    {150.0, function() rec1f1(); rec2f1() end},
    {155.0, function() rec1f5(); rec2f1() end},

    {159.0, function() rec2f5() end},
    {163.0, function() rec2f5() end},
    {167.0, function() rec2f5() end},
    {171.0, function() rec2f5() end},
    {175.0, function() rec2f5() end},
}

-- ==============================
-- EXECUTE SHOW
-- ==============================

for _, cue in ipairs(cues) do
    waitUntil(cue[1])
    cue[2]()
    print(string.format("Firework cue @ %.1fs", cue[1]))
end

print("Firework Show Completed 🎆")
