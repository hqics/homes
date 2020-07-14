#checks if the player has homes. If he has then player/homes/home/list_homes.mcfunction starts.
execute unless data storage playerdata search.list[] run tellraw @s ["",{"text":"[] ","bold":true},{"text":"no homes set","color":"dark_aqua"}]
execute if data storage playerdata search.list[] run function playerdata:player/homes/home/list_homes

#returns the Triggervalue of listhomes to 0.
scoreboard players set @s listhomes 0
