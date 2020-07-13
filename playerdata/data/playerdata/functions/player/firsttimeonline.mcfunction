forceload add 0 29999999

execute store result storage playerdata players[0].scoreboard_id int 1 run scoreboard players add max_id playerdata 1

execute as @e[type=area_effect_cloud,tag=playerdata,limit=1] run function playerdata:player/firsttimeonline_

forceload remove 0 29999999
