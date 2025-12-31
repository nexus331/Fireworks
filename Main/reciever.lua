-- Program Info
local ver = "0.1"
local manf = "LTi Technologies"
local compid = id
rednet.open("front")
print("Network Connected.")

-- FIREWORK Launch Types --
local function firework1()
    redstone.setOutput("right", true) -- 1
    redstone.setOutput("left", true)
    redstone.setOutput("back", true)
    redstone.setOutput("top", true)
    sleep(0.5)
    redstone.setOutput("right", false)
    redstone.setOutput("left", false)
    redstone.setOutput("back", false)
    redstone.setOutput("top", false)
end

local function firework2()
    redstone.setOutput("right", true) -- 1
    sleep(0.2)
    redstone.setOutput("right", false)
    sleep(0.2)
    redstone.setOutput("back", true)  -- 2
    sleep(0.2)
    redstone.setOutput("back", false)
end

local function firework3()
    redstone.setOutput("right", true) -- 1
    sleep(0.2)
    redstone.setOutput("right", false)
    sleep(0.2)
    redstone.setOutput("right", true)  -- 2
    sleep(0.2)
    redstone.setOutput("right", false)
    sleep(0.2)
    redstone.setOutput("right", true) -- 3
    sleep(0.2)
    redstone.setOutput("right", false)
end

local function firework4()
    redstone.setOutput("left", true) -- 1
    sleep(0.2)
    redstone.setOutput("left", false)
    sleep(0.2)
    redstone.setOutput("right", true)  -- 2
    sleep(0.2)
    redstone.setOutput("right", false)
    sleep(0.2)
    redstone.setOutput("back", true) -- 3
    sleep(0.2)
    redstone.setOutput("back", false)
    sleep(0.2)
    redstone.setOutput("top", true) -- 4
    sleep(0.2)
    redstone.setOutput("top", false)
end

local function firework5()
    redstone.setOutput("left", true) -- 1
    sleep(0.2)
    redstone.setOutput("left", false)
    sleep(0.2)
    redstone.setOutput("right", true)  -- 2
    sleep(0.2)
    redstone.setOutput("right", false)
    sleep(0.2)
    redstone.setOutput("back", true) -- 3
    sleep(0.2)
    redstone.setOutput("back", false)
    sleep(0.2)
    redstone.setOutput("top", true) -- 4
    sleep(0.2)
    redstone.setOutput("top", false)
    sleep(0.2) -- REVERSE --
    redstone.setOutput("top", true) -- 1
    sleep(0.2)
    redstone.setOutput("top", false)
    sleep(0.2)
    redstone.setOutput("back", true)  -- 2
    sleep(0.2)
    redstone.setOutput("back", false)
    sleep(0.2)
    redstone.setOutput("right", true) -- 3
    sleep(0.2)
    redstone.setOutput("right", false)
    sleep(0.2)
    redstone.setOutput("left", true) -- 4
    sleep(0.2)
    redstone.setOutput("left", false)
end

local function rapid()
    redstone.setOutput("left", true) -- 1
    print("rapid")
    sleep(0.1)
    redstone.setOutput("left", false)
    sleep(0.1)
    redstone.setOutput("right", true)
    print("rapid") -- 2
    sleep(0.1)
    redstone.setOutput("right", false)
    sleep(0.1)
    redstone.setOutput("back", true)
    print("rapid")-- 3
    sleep(0.1)
    redstone.setOutput("back", false)
    sleep(0.1)
    redstone.setOutput("top", true)
    print("rapid")-- 4
    sleep(0.1)
    redstone.setOutput("top", false)
    sleep(0.1) -- REVERSE --
    redstone.setOutput("top", true)
    print("rapid")-- 1
    sleep(0.1)
    redstone.setOutput("top", false)
    sleep(0.1)
    redstone.setOutput("back", true)
    print("rapid")-- 2
    sleep(0.1)
    redstone.setOutput("back", false)
    sleep(0.1)
    redstone.setOutput("right", true)
    print("rapid")-- 3
    sleep(0.1)
    redstone.setOutput("right", false)
    sleep(0.1)
    redstone.setOutput("left", true)
    print("rapid")-- 4
    sleep(0.1)
    redstone.setOutput("left", false)
end

-- Program INIT
shell.run("clear")
print("Fireworks Show Client")
print("Version:", ver)
print("By:", manf)
print("Computer ID:", compid)

-- Remote Execution

while true do

    local id, fmsg = rednet.receive()

    if fmsg == "f1" then
        print("F1 Activated")
        firework1()
    elseif fmsg == "f2" then
        print("F2 Activated")
        firework2()
    elseif fmsg == "f3" then 
        print("F3 Activated")
        firework3()
    elseif fmsg == "f4" then
        print("F4 Activated")
        firework4()
    elseif fmsg == "f5" then
        print("F5 Activated")
        firework5()
    elseif fmsg == "rapid" then
        rapid()
    else 
        print("Invalid Option!")
    end
    
end