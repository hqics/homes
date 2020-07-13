tag @s add playerdata.this
execute as @a if score @s playerdata.id = @e[limit=1,tag=playerdata.this] playerdata.id run tag @e remove playerdata.this
execute if entity @s[tag=playerdata.this] run function playerdata:player/on_leavegame
