execute if score triggerListhomes homes matches 1 run function homes:commands/listhomes/listhomes

execute unless score triggerListhomes homes matches 1 unless score undo homes matches 1 run data modify storage entitydb: search.searchfor set from storage homes: homeId
data remove storage homes: homeId
execute if score undo homes matches 1 run data modify storage entitydb: search.searchfor set from storage entitydb: data.homes.undo.id
execute if score undo homes matches 1 unless data storage entitydb: data.homes.undo.id store success score triggerListhomes homes run tellraw @s [{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},"Nothing left to undo."]

execute unless score triggerListhomes homes matches 1 run function homes:commands/general/command
