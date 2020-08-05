data modify storage entitydb: search.list set from storage entitydb: data.homes.homelist
function entitydb:search/search
data modify storage entitydb: data.homes.homelist set from storage entitydb: search.list
data remove storage entitydb: search

execute if score triggerHome homes matches 1 run function homes:commands/home/home
execute if score triggerSethome homes matches 1 run function homes:commands/sethome/sethome
execute if score triggerDelhome homes matches 1 run function homes:commands/delhome/delhome
execute if score undo homes matches 1 run function homes:commands/undo/undo
