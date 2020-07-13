execute store result storage playerdata search.searchfor int 1 run scoreboard players get triggerhome playerdata

function playerdata:search/search1

data modify storage playerdata player.homes set from storage playerdata search.list2

execute store result score count playerdata run data get storage playerdata player.homes

scoreboard players operation home_limit playerdata = non_donor_home_limit playerdata
execute if entity @s[tag=donor] run scoreboard players operation home_limit playerdata = donor_home_limit playerdata

execute if score count playerdata <= home_limit playerdata run function playerdata:player/homes/home/create

execute if score count playerdata > home_limit playerdata run function playerdata:player/homes/home/error_too_many_homes

scoreboard players set @s sethome 0
