#._.
execute store success score locationValid homes at @s if entity @s[y=-20000000,dy=39999999]
execute if score locationValid homes matches 0 run tellraw @s [{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},"Invalid location. Your y-position needs to be in [-20000000,20000000)."]
execute if score locationValid homes matches 1 run function homes:commands/sethome/create
