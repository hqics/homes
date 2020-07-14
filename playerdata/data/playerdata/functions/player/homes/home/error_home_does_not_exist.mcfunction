#outputs error message
tellraw @s ["",{"text":"[] ","bold":true},{"text":"Home #","color":"dark_aqua"},{"score":{"name":"@s","objective":"home"},"color":"dark_aqua"},{"text":" doesn't exist","color":"dark_aqua"}]
#removes the home id value.
data remove storage playerdata player.homes[0]
