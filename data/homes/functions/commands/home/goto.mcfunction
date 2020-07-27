execute as @a[tag=homes.player,distance=0..,gamemode=!spectator] at @s run function homes:commands/home/anti_tp_exploit
execute unless entity @a[tag=homes.player,distance=0..] run xp add @a[tag=homes.player] 0

data modify entity @s Pos set from storage entitydb: data.homes.homelist[0].Pos
data modify entity @s Rotation set from storage entitydb: data.homes.homelist[0].Rotation

##
execute at @a[tag=homes.player] run summon minecraft:area_effect_cloud ~ 19999999 ~ {Tags:["homes.aec"]}
execute at @a[tag=homes.player] run tp @e[tag=homes.aec,limit=1] ~ ~ ~ ~ ~
##

execute positioned as @s rotated as @s run tp @a[tag=homes.player] ~ ~ ~ ~ ~

##
data modify storage homes: compare set from storage entitydb: data.homes.homelist[0].Dimension
execute store result score incorrectDim homes run data modify storage homes: compare set from entity @a[tag=homes.player,limit=1] Dimension
data remove storage homes: compare
execute if score incorrectDim homes matches 1 as @a[tag=homes.player] run function homes:tellraw/dimension_not_found
execute if score incorrectDim homes matches 1 at @e[tag=homes.aec] run tp @a[tag=homes.player] ~ ~ ~ ~ ~
execute if score incorrectDim homes matches 1 run kill @e[tag=homes.dimension]
kill @e[tag=homes.aec]
##

#sets velocity to 0
execute if score incorrectDim homes matches 0 as @a[tag=homes.player] run tp @s

kill
