function homes:get_player
execute if score actions homes matches 2.. run tellraw @s [{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},"You can't run more than 1 commands per tick."]
execute if score actions homes matches 1 run function homes:trigger/command
function entitydb:save

scoreboard players set @s home 0
scoreboard players set @s sethome 0
scoreboard players set @s delhome 0
scoreboard players set @s listhomes 0
