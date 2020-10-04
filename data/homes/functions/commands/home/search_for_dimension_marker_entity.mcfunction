#safety
tag @e remove homes.dimension
tag @a remove homes.player

tag @s add homes.player

execute store result score dimension_id homes run data get storage homes: dimensions[0].s_id
scoreboard players set found homes 0
execute as @e[type=item_frame,tag=homes.dimensionMarker] if score @s homes = dimension_id homes store success score found homes run tag @s add homes.dimension

execute if score found homes matches 0 run function homes:commands/home/marker_not_found
execute if score found homes matches 0 run function homes:tellraw/dimension_not_found
execute if score found homes matches 1 in entitydb: run function homes:commands/home/summon_temp_entity

tag @s remove homes.player
