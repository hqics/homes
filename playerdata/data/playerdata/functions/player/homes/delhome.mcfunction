#Gets the value added to the delhome trigger
execute store result storage playerdata search.searchfor int 1 run scoreboard players get triggerhome playerdata

#Searches for the home id.
function playerdata:search/search1

#Gets the info of the home
data modify storage playerdata player.homes set from storage playerdata search.list2

#Prints out that the home is deleted/wasn't found.
execute if score not_found playerdata matches 1 run tellraw @s ["",{"text":"[] ","bold":true},{"text":"Home #","color":"dark_aqua"},{"score":{"name":"@s","objective":"delhome"},"color":"dark_aqua"},{"text":" doesn't exist","color":"dark_aqua"}]
execute unless score not_found playerdata matches 1 run function playerdata:player/homes/home/get_home_information
execute unless score not_found playerdata matches 1 run tellraw @s ["",{"text":"[] ","bold":true},{"text":"Deleted home #","color":"dark_aqua"},{"score":{"name":"@s","objective":"delhome"},"color":"dark_aqua"},{"nbt":"text","storage":"playerdata","color":"dark_aqua"},{"text":" at ","color":"dark_aqua"},{"score":{"name":"x","objective":"playerdata"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"y","objective":"playerdata"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"z","objective":"playerdata"},"color":"dark_aqua"}]

#deletes the home
data remove storage playerdata player.homes[0]

#returns the Triggervalue of delhome to 0.
scoreboard players set @s delhome 0
