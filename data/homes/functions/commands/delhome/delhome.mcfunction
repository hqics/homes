execute if score not_found entitydb matches 1 run function homes:tellraw/home_does_not_exist
execute if score not_found entitydb matches 0 run function homes:commands/general/get_home_information
execute if score not_found entitydb matches 0 run tellraw @s [{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},"Deleted home ",{"nbt":"home_data","storage":"homes:","interpret":true}]

execute if score not_found entitydb matches 0 run data modify storage entitydb: data.homes.undo set from storage entitydb: data.homes.homelist[0]

data remove storage entitydb: data.homes.homelist[0]
execute unless data storage entitydb: data.homes.homelist[] run data remove storage entitydb: data.homes.homelist
