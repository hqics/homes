data modify storage homes: player set from entity @s

scoreboard players set locationValid homes 0

execute store result score x homes run data get storage homes: player.Pos[0]
execute store result score y homes run data get storage homes: player.Pos[1]
execute store result score z homes run data get storage homes: player.Pos[2]

execute if score x homes matches -30000000..29999999 if score z homes matches -30000000..29999999 if score y homes matches -20000000..19999999 run scoreboard players set locationValid homes 1

execute if score locationValid homes matches 0 run tellraw @s [{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},"Invalid location. Your coordinates are too high/low."]
execute if score locationValid homes matches 1 positioned 0 19999999 0 run function homes:commands/sethome/create

data remove storage homes: player
