#runs the player/on_joingame.mcfunction script if the players gametime isn't the same as the gametime of the server.
execute unless score @s playerdata.l_on = gametime playerdata run function playerdata:player/on_joingame

#Triggers can only be accessed one time by the player. To use the trigger again it needs to be reenabled.
#Here the first executes try to reenable the triggers,
#doing so gives playerdata.temp a 1. If the triggers don't need to be reenabled, it gives 
#playerdata.temp a 0. 
#If playerdata.temp is 1 (meaning the trigger has been reset), it starts the trigger's function.
execute store success score @s playerdata.temp run scoreboard players enable @s sethome
execute if score @s playerdata.temp matches 1 run function playerdata:player/homes/_sethome

execute store success score @s playerdata.temp run scoreboard players enable @s home
execute if score @s playerdata.temp matches 1 run function playerdata:player/homes/_home

execute store success score @s playerdata.temp run scoreboard players enable @s delhome
execute if score @s playerdata.temp matches 1 run function playerdata:player/homes/_delhome

execute store success score @s playerdata.temp run scoreboard players enable @s listhomes
execute if score @s playerdata.temp matches 1 run function playerdata:player/homes/_listhomes
