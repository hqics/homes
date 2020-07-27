data modify storage entitydb: data.homes.homelist[0] set from storage entitydb: data.homes.undo
data remove storage entitydb: data.homes.undo
function homes:commands/general/get_home_information
execute if score not_found entitydb matches 1 run tellraw @s {"nbt":"click_events[0]","storage":"homes:click_events","interpret":true,"extra":[{"extra":["Recreated home ",{"nbt":"home_data","storage":"homes:","interpret":true}],"nbt":"data.homes.color0","storage":"entitydb:","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport."}]}}]}
execute if score not_found entitydb matches 0 run tellraw @s {"nbt":"click_events[0]","storage":"homes:click_events","interpret":true,"extra":[{"extra":["Relocated home ",{"nbt":"home_data","storage":"homes:","interpret":true}],"nbt":"data.homes.color0","storage":"entitydb:","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport."}]}}]}
function homes:commands/general/next_click_event
execute store result storage entitydb: data.homes.homelist[0].l_id int 1 run scoreboard players operation listhomes_id homes %= clickEventCount homes