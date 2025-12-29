-- START OF PROGRAM -- 
shell.run("clear")
print("Program Running...")
rednet.open("front")

-- SHOW START --
redstone.setOutput("back", true)
sleep(3)
print("Now Playing: 2026 Luxemburg New Year Countdown Mix")
redstone.setOutput("back", false)
print("Firework Launch Sequence Initiated")

-- FIREWORK EXECUTION --
sleep(28)
print("Tower Firework Launched")
rednet.send(1, "f4")
sleep(19)
print("Market Activated")
rednet.send(2, "f1")
sleep(5)
print("Market Activated")
rednet.send(2, "f1")
sleep(5)
print("Market Activated")
rednet.send(2, "f1")
rednet.send(1, "f4")
print("Tower Activated")