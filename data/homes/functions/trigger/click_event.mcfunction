scoreboard players set unnormalCommand homes 1

scoreboard players set triggerListhomes homes 0
scoreboard players set triggerHome homes 1

#search for homes with a matching click event id
data modify storage entitydb: search.list set from storage entitydb: data.homes.homelist
execute store result storage entitydb: search.searchfor int 1 run scoreboard players add homeId homes 2147483647
function entitydb:search0/search
data modify storage entitydb: data.homes.homelist set from storage entitydb: search.list
data remove storage entitydb: search

execute if score not_found entitydb matches 1 run data remove storage entitydb: data.homes.homelist[0]
execute unless data storage entitydb: data.homes.homelist[] run data remove storage entitydb: data.homes.homelist
execute if score not_found entitydb matches 0 run data modify storage homes: homeId set from storage entitydb: data.homes.homelist[0].id
execute if score not_found entitydb matches 0 run function homes:commands/general/main
