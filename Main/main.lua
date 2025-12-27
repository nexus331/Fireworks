-- START OF PROGRAM -- 
shell.run("clear")
print("Program Running...")
redstone.setOutput("left", true)
sleep(3)
print("Now Playing: Auld Lang Syne")
redstone.setOutput("left", false)
print("Firework Launch Sequence Initiated")

-- FIREWORK LAUNCHES --
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

-- FIREWORK EXECUTION --
sleep(67)
print("Firework1 Launched")
firework1()
sleep(13)
print("Firework3 Launched")
firework3()
sleep (4)
firework2()