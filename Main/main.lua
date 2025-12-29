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
rednet.send(1, "f1")
sleep(3)
rednet.send(2, "A-F2")