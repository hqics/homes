execute as @a[tag=homes.player,distance=0..,gamemode=!spectator] at @s run function homes:commands/home/anti_tp_exploit
#fix for the experience bar not showing up when switching dimensions
execute unless entity @a[tag=homes.player,distance=0..] run xp add @a[tag=homes.player] 0
execute positioned as @s rotated as @s run tp @a[tag=homes.player] ~ ~ ~ ~ ~
