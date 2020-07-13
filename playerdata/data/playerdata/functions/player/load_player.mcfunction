tag @s add playerdata.player
execute as @e[type=area_effect_cloud,tag=playerdata,limit=1] run function playerdata:player/load_player_
tag @s remove playerdata.player
