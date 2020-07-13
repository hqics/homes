execute unless score not_found playerdata matches 1 run function playerdata:player/homes/home/get_old_home_information

execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run data modify storage playerdata player.homes[0].Dimension set value -1
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run data modify storage playerdata player.homes[0].Dimension set value 0
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run data modify storage playerdata player.homes[0].Dimension set value 1
data modify storage playerdata player.homes[0].Pos set from entity @s Pos
data modify storage playerdata player.homes[0].Rotation set from entity @s Rotation

function playerdata:player/homes/home/get_home_information

execute unless score not_found playerdata matches 1 run tellraw @s ["",{"text":"[] ","bold":true},{"text":"Set home #","color":"dark_aqua"},{"score":{"name":"@s","objective":"sethome"},"color":"dark_aqua"},{"nbt":"text","storage":"playerdata","color":"dark_aqua"},{"text":" at ","color":"dark_aqua"},{"score":{"name":"x","objective":"playerdata"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"y","objective":"playerdata"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"z","objective":"playerdata"},"color":"dark_aqua"},{"text":", previously","color":"dark_aqua"},{"nbt":"text_","storage":"playerdata","color":"dark_aqua"},{"text":" at ","color":"dark_aqua"},{"score":{"name":"x_","objective":"playerdata"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"y_","objective":"playerdata"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"z_","objective":"playerdata"},"color":"dark_aqua"}]
execute if score not_found playerdata matches 1 run tellraw @s ["",{"text":"[] ","bold":true},{"text":"Set home #","color":"dark_aqua"},{"score":{"name":"@s","objective":"sethome"},"color":"dark_aqua"},{"nbt":"text","storage":"playerdata","color":"dark_aqua"},{"text":" at ","color":"dark_aqua"},{"score":{"name":"x","objective":"playerdata"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"y","objective":"playerdata"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"z","objective":"playerdata"},"color":"dark_aqua"}]
tellraw @s ["",{"text":"[] ","bold":true},{"text":"To view a list of your homes, type ","color":"dark_aqua"},{"text":"!listhomes","color":"dark_aqua","underlined":true,"clickEvent":{"action":"run_command","value":"!listhomes"}}]
