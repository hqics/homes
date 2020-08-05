execute store success score incorrectDim_ homes run data modify storage homes: id set from entity @a[tag=homes.player,limit=1] Dimension
execute if score incorrectDim_ homes matches 0 at @a[tag=homes.player] positioned 0 19999999 0 run function homes:commands/home/new_dimension_marker
execute if score incorrectDim_ homes matches 0 run scoreboard players set found homes 1
