#compare
#if searchfor equals playerdata.id or there is no element in list, it stops searching and goes back to the main script.
data modify storage playerdata search.compare set from storage playerdata search.searchfor
execute store success score .not_found playerdata run data modify storage playerdata search.compare set from storage playerdata search.list[0].id
execute if score .not_found playerdata matches 1 run function playerdata:search/search3
