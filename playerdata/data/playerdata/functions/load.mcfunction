#Gets loaded once the game loads 
scoreboard objectives add playerdata dummy
#Sets everything up if firstrun.mcfunction didn't run before
execute unless score firstrun playerdata matches 1 run function playerdata:firstrun
