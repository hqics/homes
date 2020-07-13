function playerdata:player/homes/home/get_home_information
scoreboard players operation x_ playerdata = x playerdata
scoreboard players operation y_ playerdata = y playerdata
scoreboard players operation z_ playerdata = z playerdata
data modify storage playerdata text_ set from storage playerdata text
