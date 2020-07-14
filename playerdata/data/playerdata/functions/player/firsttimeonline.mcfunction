#Forceloads area effect cloud location
forceload add 0 29999999

#creates a new scoreboard_id
execute store result storage playerdata players[0].scoreboard_id int 1 run scoreboard players add max_id playerdata 1

#continues as if the cloud is processing the command
execute as @e[type=area_effect_cloud,tag=playerdata,limit=1] run function playerdata:player/firsttimeonline_

forceload remove 0 29999999
