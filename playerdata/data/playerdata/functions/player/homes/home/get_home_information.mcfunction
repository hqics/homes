execute store result score x playerdata run data get storage playerdata player.homes[0].Pos[0] 2
execute store result score y playerdata run data get storage playerdata player.homes[0].Pos[1] 2
execute store result score z playerdata run data get storage playerdata player.homes[0].Pos[2] 2
scoreboard players add x playerdata 1
scoreboard players add y playerdata 1
scoreboard players add z playerdata 1
scoreboard players operation x playerdata /= 2 playerdata
scoreboard players operation y playerdata /= 2 playerdata
scoreboard players operation z playerdata /= 2 playerdata

execute store result score dimension playerdata run data get storage playerdata player.homes[0].Dimension
execute if score dimension playerdata matches 1 run data modify storage playerdata text set value " in the end"
execute if score dimension playerdata matches 0 run data modify storage playerdata text set value " in the overworld"
execute if score dimension playerdata matches -1 run data modify storage playerdata text set value " in the nether"
