#round to the nearest integer coordinates
execute store result score x homes run data get storage entitydb: data.homes.homelist[0].Pos[0] 2
execute store result score y homes run data get storage entitydb: data.homes.homelist[0].Pos[1] 2
execute store result score z homes run data get storage entitydb: data.homes.homelist[0].Pos[2] 2
scoreboard players add x homes 1
scoreboard players add y homes 1
scoreboard players add z homes 1
scoreboard players operation x homes /= 2 homes
scoreboard players operation y homes /= 2 homes
scoreboard players operation z homes /= 2 homes
