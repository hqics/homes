execute store result storage playerdata search.searchfor int 1 run scoreboard players get triggerhome playerdata

function playerdata:search/search1

data modify storage playerdata player.homes set from storage playerdata search.list2

execute if score not_found playerdata matches 1 run function playerdata:player/homes/home/error_home_does_not_exist

execute unless score not_found playerdata matches 1 run function playerdata:player/homes/home/load

scoreboard players set @s home 0
