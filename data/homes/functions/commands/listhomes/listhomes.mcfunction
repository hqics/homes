execute unless data storage entitydb: data.homes.homelist[] run tellraw @s {"extra":[{"text":"You haven't set any homes."}],"nbt":"data.homes.color0","storage":"entitydb:","interpret":true}

execute if data storage entitydb: data.homes.homelist[] in entitydb: run function homes:commands/listhomes/print_and_get_next

data modify storage entitydb: data.homes.homelist set from storage entitydb: data.homes.homelist_temp
data remove storage entitydb: data.homes.homelist_temp
