#Gets the Coordinates rounded.
function playerdata:player/homes/home/get_home_information

#Saves those Coordinates for later use. text_ will be used for the tellraw to show the dimension. 
scoreboard players operation x_ playerdata = x playerdata
scoreboard players operation y_ playerdata = y playerdata
scoreboard players operation z_ playerdata = z playerdata
data modify storage playerdata text_ set from storage playerdata text
