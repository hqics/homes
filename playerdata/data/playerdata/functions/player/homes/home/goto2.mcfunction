execute if score dimension playerdata matches 1 in the_end run tp @a[tag=playerdata.player,limit=1] ~ ~ ~ ~ ~
execute if score dimension playerdata matches 0 in overworld run tp @a[tag=playerdata.player,limit=1] ~ ~ ~ ~ ~
execute if score dimension playerdata matches -1 in the_nether run tp @a[tag=playerdata.player,limit=1] ~ ~ ~ ~ ~

#removes velocity
execute as @a[tag=playerdata.player,limit=1] run tp @s
