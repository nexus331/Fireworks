-- Program Info
local ver = "1.0"
local manf = "LTi Technologies"
local compid = shell.run("id")
rednet.open("front")
print("Network Connected.")

-- FIREWORK Launch Types --
local function firework1()
    redstone.setOutput("right", true)
    sleep(0.5)
    redstone.setOutput("right", false)
end

local function firework2()
    redstone.setOutput("right", true) -- 1
    sleep(0.2)
    redstone.setOutput("right", false)
    sleep(0.2)
    redstone.setOutput("right", true)  -- 2
    sleep(0.2)
    redstone.setOutput("right", false)
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

-- Program INIT
shell.run("clear")
print("Fireworks Show Software")
print("Version:", ver)
print("By:", manf)
print("Computer ID:", compid)

-- Remote Execution

while true do

    local id, fmsg = rednet.receive()

    if fmsg == "f1" then
        print("F1 Activated")
    elseif fmsg == "f2" then
        print("F2 Activated")
    elseif fmsg == "f3" then 
        print("F3 Activated")
    else 
        print("Invalid Option!")
    end
    
end