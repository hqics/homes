#Gets the id of the current player.
execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=playerdata.player,limit=1] playerdata.id
#executes the command as the player again, but the position is stil from where the command comes from is still the world border.
execute at @s as @a[tag=playerdata.player,limit=1] run function playerdata:player/load_player__

tp -100 0 29999999
