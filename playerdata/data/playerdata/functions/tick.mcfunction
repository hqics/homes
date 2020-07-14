#Runs every tick
#Forceloads an area at the world border forever, and teleports every area_effect_cloud entity there. If there is none, one will be spawned at that world border.
forceload add -100 29999999
tp @e[type=area_effect_cloud,tag=playerdata] -100 0 29999999
execute unless entity @e[type=area_effect_cloud,tag=playerdata] run summon area_effect_cloud -100 0 29999999 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["playerdata"]}

#redirects to /player/tick.mcfunction for the trigger commands, function will be executed for every player. 
execute as @a run function playerdata:player/tick
#Gets the total amount of ticks the server has been running.
execute store result score gametime playerdata run time query gametime
