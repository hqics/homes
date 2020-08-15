#save the position, dimension, rotation of the player in case they will be teleported to the wrong dimension
execute at @a[tag=homes.player] run summon minecraft:area_effect_cloud ~ 19999999 ~ {Tags:["homes.aec"]}
execute at @a[tag=homes.player] run tp @e[tag=homes.aec,limit=1] ~ ~ ~ ~ ~

#teleport the player
data modify entity @s Pos set from storage entitydb: data.homes.homelist[0].Pos
data modify entity @s Rotation set from storage entitydb: data.homes.homelist[0].Rotation
function homes:commands/home/tp

#check if the player was teleported to the wrong dimension
data modify storage homes: Dimension set from storage entitydb: data.homes.homelist[0].Dimension
execute store result score incorrectDim homes run data modify storage homes: Dimension set from entity @a[tag=homes.player,limit=1] Dimension
data remove storage homes: Dimension

#teleport the player back if they were teleported to the wrong dimension
execute if score incorrectDim homes matches 1 at @e[tag=homes.aec] run tp @a[tag=homes.player] ~ ~ ~ ~ ~
execute if score incorrectDim homes matches 1 run kill @e[tag=homes.dimension,type=item_frame]
execute if score incorrectDim homes matches 1 run function homes:commands/home/marker_not_found
execute if score incorrectDim homes matches 1 if score found homes matches 1 run function homes:commands/home/tp
execute if score found homes matches 1 run scoreboard players set incorrectDim homes 0

execute if score incorrectDim homes matches 1 as @a[tag=homes.player] run function homes:tellraw/dimension_not_found
#set player velocity to 0
execute if score incorrectDim homes matches 0 as @a[tag=homes.player] run tp @s

kill @e[tag=homes.aec]
kill
