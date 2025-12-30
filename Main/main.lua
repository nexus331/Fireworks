-- PROGRAM VARIABLES --

local ver = "0.1"
local manf = "LTi Technologies"
local compid = id

--  RECIEVERS VARIABLES --

local re1 = 1
local re2 = 2
local re3 = 3
local re4 = 4

-- START OF PROGRAM -- 
shell.run("clear")
print("Firework Show Server")
print("Version:", ver)
print("By:", manf)
rednet.open("front")
print("Network Connected with ID:", compid)

-- SHOW START --
redstone.setOutput("back", true)
sleep(3)
print("Now Playing: 2026 Luxemburg New Year Countdown Mix")
redstone.setOutput("back", false)
print("Firework Launch Sequence Initiated")

-- FIREWORK EXECUTION --
sleep(28)
print("Tower Firework Launched")
rednet.send(re1, "f4")
sleep(19)
print("Market Activated")
rednet.send(re2, "f1")
sleep(5)
print("Market Activated")
rednet.send(re2, "f1")
sleep(5)
print("Market Activated")
rednet.send(re2, "f1")
rednet.send(re1, "f4")
print("Tower Activated")
sleep(4.8)
print("Market Activated")
rednet.send(re2, "f1")
sleep(4.8)
print("Market Activated")
rednet.send(re2, "f1")
sleep(4.8)
print("Market Activated")
rednet.send(re2, "f1")
sleep(4.8)
print("Market Activated") --1
rednet.send(re2, "f1")
sleep(4.8)
print("Market Activated") -- 2
rednet.send(re2, "f1")
sleep(4.8)
print("Market Activated") -- 3
rednet.send(re2, "f1")
sleep(4.8)
print("Market Activated") -- 4
rednet.send(re2, "f1")
sleep(4.8)
print("Market Activated") -- 5
rednet.send(re2, "f1") 
sleep(5)
rednet.send(re2, "f5")
rednet.send(re1, "f1")
sleep(3)
rednet.send(re2, "f5")
rednet.send(re2, "f5")
sleep(4)
rednet.send(re2, "f5")
