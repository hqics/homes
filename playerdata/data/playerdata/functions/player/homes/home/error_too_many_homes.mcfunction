#Says to the player that the home limit's been reached.
tellraw @s[tag=donor] ["",{"text":"[] ","bold":true},{"text":"Limit of homes for donors is ","color":"dark_aqua"},{"score":{"name":"donor_home_limit","objective":"playerdata"},"color":"dark_aqua"},{"text":".","color":"dark_aqua"}]
tellraw @s[tag=donor] ["",{"text":"[] ","bold":true},{"text":"To view a list of your homes, type ","color":"dark_aqua"},{"text":"!listhomes","color":"dark_aqua","underlined":true,"clickEvent":{"action":"run_command","value":"!listhomes"}}]
tellraw @s[tag=!donor] ["",{"text":"[] ","bold":true},{"text":"Limit of homes for non-donors is ","color":"dark_aqua"},{"score":{"name":"non_donor_home_limit","objective":"playerdata"},"color":"dark_aqua"},{"text":". Donors may have up to ","color":"dark_aqua"},{"score":{"name":"donor_home_limit","objective":"playerdata"},"color":"dark_aqua"},{"text":" homes. To donate, type ","color":"dark_aqua"},{"text":"!donate","color":"dark_aqua","underlined":true,"clickEvent":{"action":"run_command","value":"!donate"}}]

#removes the home that would've been created.
data remove storage playerdata player.homes[0]
