data modify block 0 0 -1 Text1 set value '{"nbt":"data.homes.homelist[0].id","storage":"entitydb:"}'
data modify storage entitydb: data.homes.homelist[0].id set from block 0 0 -1 Text1

data remove storage playerdata dim
data modify storage playerdata dim set from storage entitydb: data.homes.homelist[0].Dimension
execute if data storage playerdata {dim:-1} run data modify storage entitydb: data.homes.homelist[0].Dimension set value "minecraft:the_nether"
execute if data storage playerdata {dim:0} run data modify storage entitydb: data.homes.homelist[0].Dimension set value "minecraft:overworld"
execute if data storage playerdata {dim:1} run data modify storage entitydb: data.homes.homelist[0].Dimension set value "minecraft:the_end"

execute if data storage playerdata dim run data modify storage entitydb: homelist2 append from storage entitydb: data.homes.homelist[0]
data remove storage entitydb: data.homes.homelist[0]
execute if data storage entitydb: data.homes.homelist[] in entitydb: run function homes:update/iterateh
