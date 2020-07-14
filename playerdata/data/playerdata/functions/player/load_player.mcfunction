#player/load_player.mcfunction is the main home script. After a trigger ran it's script and modified parameters for it's function it redirects to this location.
#adds playerdata.player tag to the player. Removes after player/load_player_.mcfunction is done.
tag @s add playerdata.player
#It executes as the area_effect_cloud initialized in tick.mcfunction
execute as @e[type=area_effect_cloud,tag=playerdata,limit=1] run function playerdata:player/load_player_
tag @s remove playerdata.player
