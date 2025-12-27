-- START OF PROGRAM -- 
shell.run("clear")
print("Program Running...")
redstone.setOutput("back", true)
sleep(3)
print("Now Playing: Auld Lang Syne")
redstone.setOutput("back", false)
print("Firework Launch Sequence Initiated")

-- FIREWORK EXECUTION --
sleep(67)
print("Firework1 Launched")
firework1()
sleep(13)
print("Firework3 Launched")
firework3()
sleep (4)
firework2()