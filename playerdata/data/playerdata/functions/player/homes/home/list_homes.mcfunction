#Gets the coordinates of the last home in the list and multiplies by two
execute store result score x playerdata run data get storage playerdata search.list[-1].Pos[0] 2
execute store result score y playerdata run data get storage playerdata search.list[-1].Pos[1] 2
execute store result score z playerdata run data get storage playerdata search.list[-1].Pos[2] 2

#Gets the coords and divides by two in order to turn the doubles into integers.
scoreboard players add x playerdata 1
scoreboard players add y playerdata 1
scoreboard players add z playerdata 1
scoreboard players operation x playerdata /= 2 playerdata
scoreboard players operation y playerdata /= 2 playerdata
scoreboard players operation z playerdata /= 2 playerdata

#Gets the dimension in which the home is set.
execute store result score dimension playerdata run data get storage playerdata search.list[-1].Dimension
execute if score dimension playerdata matches 1 run data modify storage playerdata text set value " in the end"
execute if score dimension playerdata matches 0 run data modify storage playerdata text set value " in the overworld"
execute if score dimension playerdata matches -1 run data modify storage playerdata text set value " in the nether"

#prints out homes with id
tellraw @s ["",{"text":"[] ","bold":true},{"text":"#","color":"dark_aqua"},{"nbt":"search.list[-1].id","storage":"playerdata","color":"dark_aqua"},{"nbt":"text","storage":"playerdata","color":"dark_aqua"},{"text":" at ","color":"dark_aqua"},{"score":{"name":"x","objective":"playerdata"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"y","objective":"playerdata"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"z","objective":"playerdata"},"color":"dark_aqua"}]

#removes the home from the list and checks if the list is empty. Repeats the function if it isn't
data remove storage playerdata search.list[-1]
execute if data storage playerdata search.list[] run function playerdata:player/homes/home/list_homes
