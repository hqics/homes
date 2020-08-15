#summon a new dimension marker if the home is in the overworld, nether, end, or the player's dimension
scoreboard players set found homes 0
data modify storage homes: dimension set from storage homes: dimensions[0].id
execute if data storage homes: {dimension:"minecraft:overworld"} in overworld run function homes:commands/home/new_dimension_marker
execute if data storage homes: {dimension:"minecraft:the_nether"} in the_nether run function homes:commands/home/new_dimension_marker
execute if data storage homes: {dimension:"minecraft:the_end"} in the_end run function homes:commands/home/new_dimension_marker
execute if score found homes matches 0 store success score incorrectDim_ homes run data modify storage homes: dimension set from entity @a[tag=homes.player,limit=1] Dimension
execute if score found homes matches 0 if score incorrectDim_ homes matches 0 at @a[tag=homes.player] run function homes:commands/home/new_dimension_marker
data remove storage homes: dimension
