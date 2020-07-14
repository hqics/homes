#Positions the area effect cloud at the home location
execute store result score dimension playerdata run data get storage playerdata player.homes[0].Dimension
data modify entity @s Pos set from storage playerdata player.homes[0].Pos
data modify entity @s Rotation set from storage playerdata player.homes[0].Rotation

#Runs the teleport command
execute at @s run function playerdata:player/homes/home/goto2

kill
