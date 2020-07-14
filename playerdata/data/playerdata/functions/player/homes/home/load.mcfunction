#Gets the dimension the player is currently on.
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set dim_first playerdata -1
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set dim_first playerdata 0
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set dim_first playerdata 1

#Gets the dimension the homepoint is located at
execute store result score dim_second playerdata run data get storage playerdata player.homes[0].Dimension

#Executes the anti-tp-exploit to prevent coord leaks.
execute if score dim_first playerdata = dim_second playerdata unless entity @s[gamemode=spectator] run function playerdata:player/homes/home/anti_tp_exploit

#Teleports the player
tag @s add playerdata.player
summon area_effect_cloud -100 0 29999999 {Duration:2147483647,Tags:["playerdata.home"]}
execute as @e[tag=playerdata.home] run function playerdata:player/homes/home/goto
tag @s remove playerdata.player

#Prints out to what home the player has been teleported
tellraw @s ["",{"text":"[] ","bold":true},{"text":"Teleported to home #","color":"dark_aqua"},{"score":{"name":"@s","objective":"home"},"color":"dark_aqua"}]
tellraw @s ["",{"text":"[] ","bold":true},{"text":"To view a list of your homes, type ","color":"dark_aqua"},{"text":"!listhomes","color":"dark_aqua","underlined":true,"clickEvent":{"action":"run_command","value":"!listhomes"}}]
