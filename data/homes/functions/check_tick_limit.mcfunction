function entitydb:get
execute if score actions homes matches 2.. run tellraw @s {"extra":[{"text":"You can't run more than 1 commands per tick."}],"nbt":"data.homes.color0","storage":"entitydb:","interpret":true}
execute if score actions homes matches 1 run function homes:command
function entitydb:save
