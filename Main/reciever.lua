-- Program Info
local ver = "1.0"
local manf = "LTi Technologies"
local id = shell.run("id")

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
print("Computer ID:", id)

-- Remote Execution

local fireworkoptions = {
    [A-F1] = firework1(), "F1",
    [A-F2] = firework2(), "F2",
    [A-F3] = firework3(), "F3"
}

local recv = rednet.recieve(0)

while true do
    if fireworkoptions[recv] then
        fireworkoptions[recv]()
        print(fireworkoptions[recv])
    end
end