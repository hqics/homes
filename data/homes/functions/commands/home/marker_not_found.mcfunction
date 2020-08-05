scoreboard players set found homes 0
data modify storage homes: id set from storage homes: dimensions[0].id
execute if data storage homes: {id:"minecraft:overworld"} in overworld positioned 0 19999999 0 run function homes:commands/home/new_dimension_marker
execute if data storage homes: {id:"minecraft:the_nether"} in the_nether positioned 0 19999999 0 run function homes:commands/home/new_dimension_marker
execute if data storage homes: {id:"minecraft:the_end"} in the_end positioned 0 19999999 0 run function homes:commands/home/new_dimension_marker
execute if score found homes matches 0 run function homes:commands/home/new_dimension_marker_in_player_dimension
data remove storage homes: id
