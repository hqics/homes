execute unless data storage playerdata search.list[] run tellraw @s ["",{"text":"[] ","bold":true},{"text":"no homes set","color":"dark_aqua"}]
execute if data storage playerdata search.list[] run function playerdata:player/homes/home/list_homes

scoreboard players set @s listhomes 0
