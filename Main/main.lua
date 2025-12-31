-- PROGRAM VARIABLES --

local ver = "0.3"
local manf = "LTi Technologies"
local compid = id

--  RECIEVERS VARIABLES --

local re1 = 1
local re2 = 2
local re3 = 3
local re4 = 4
local re5 = 5
local rapidrec = 7

-- LAUNCH FUNCTIONS --

local function rec1f1()
    print("Reciever 1 recieved F1")
    rednet.send(re1, "f1")
end

local function rec1f2()
    print("Reciever 1 recieved F2")
    rednet.send(re1, "f2")
end

local function rec1f3()
    print("Reciever 1 recieved F3")
    rednet.send(re1, "f3")
end

local function rec1f4()
    print("Reciever 1 recieved F4")
    rednet.send(re1, "f4")
end

local function rec1f5()
    print("Reciever 1 recieved F5")
    rednet.send(re1, "f5")
end

-- Reciever 2 --

local function rec2f1()
    print("Reciever 2 recieved F1")
    rednet.send(re2, "f1")
end

local function rec2f2()
    print("Reciever 2 recieved F2")
    rednet.send(re2, "f2")
end

local function rec2f3()
    print("Reciever 2 recieved F3")
    rednet.send(re2, "f3")
end

local function rec2f4()
    print("Reciever 2 recieved F4")
    rednet.send(re2, "f4")
end

local function rec2f5()
    print("Reciever 2 recieved F5")
    rednet.send(re2, "f5")
end

-- Reciever 3

local function rec3f1()
    print("Reciever 3 recieved F1")
    rednet.send(re3, "f1")
end

local function rec3f2()
    print("Reciever 3 recieved F2")
    rednet.send(re3, "f2")
end

local function rec3f3()
    print("Reciever 3 recieved F3")
    rednet.send(re3, "f3")
end

local function rec3f4()
    print("Reciever 3 recieved F4")
    rednet.send(re3, "f4")
end

local function rec3f5()
    print("Reciever 3 recieved F5")
    rednet.send(re3, "f5")
end

-- Reciever 4

local function rec4f1()
    print("Reciever 4 recieved F1")
    rednet.send(re4, "f1")
end

local function rec4f2()
    print("Reciever 4 recieved F2")
    rednet.send(re4, "f2")
end

local function rec4f3()
    print("Reciever 4 recieved F3")
    rednet.send(re4, "f3")
end

local function rec4f4()
    print("Reciever 4 recieved F4")
    rednet.send(re4, "f4")
end

local function rec4f5()
    print("Reciever 4 recieved F5")
    rednet.send(re4, "f5")
end

-- Reciever 5

local function rec5f1()
    print("Reciever 5 recieved F1")
    rednet.send(re5, "f1")
end

local function rec5f2()
    print("Reciever 5 recieved F2")
    rednet.send(re5, "f2")
end

local function rec5f3()
    print("Reciever 5 recieved F3")
    rednet.send(re5, "f3")
end

local function rec5f4()
    print("Reciever 5 recieved F4")
    rednet.send(re5, "f4")
end

local function rec5f5()
    print("Reciever 5 recieved F5")
    rednet.send(re5, "f5")
end

local function rapid()
    print("Reciever recieved rapid")
    rednet.send(rapidrec, "rapid")
end


-- START OF PROGRAM -- 
shell.run("clear")
print("Firework Show Server")
print("Version:", ver)
print("By:", manf)
rednet.open("top")
print("Network Connected with ID:", compid)

-- SHOW START --
redstone.setOutput("back", true)
sleep(3)
print("Now Playing: 2026 Luxemburg New Year Countdown Mix")
redstone.setOutput("back", false)
print("Firework Launch Sequence Initiated")

-- FIREWORK EXECUTION --
sleep(60)
rapid()
rec1f1()
rec2f5()
sleep(4)
rec2f5()
rec1f1()
sleep(4)
rec2f5()
sleep(0.1)
rec4f1()
rec3f1()
sleep(0.1)
rec4f1()
rec3f1()
sleep(0.1)
rec4f1()
rec3f1()
