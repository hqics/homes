tag @s add homes.player
summon area_effect_cloud ~ ~ ~ {Tags:["homes.home"]}
execute as @e[type=area_effect_cloud,tag=homes.home,x=0,z=0,dx=0] at @e[type=item_frame,tag=homes.dimension,limit=1] run function homes:commands/home/goto
tag @s remove homes.player
tag @e[type=item_frame] remove homes.dimension
execute if score incorrectDim homes matches 0 run tellraw @s {"nbt":"click_events[0]","storage":"homes:click_events","interpret":true,"extra":[{"extra":["Teleported to home ",{"nbt":"data.homes.color1","storage":"entitydb:","interpret":true,"extra":[{"nbt":"data.homes.homelist[0].id","storage":"entitydb:","interpret":true}]}],"nbt":"data.homes.color0","storage":"entitydb:","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},{"text":"Click to teleport."}]}}]}
execute if score incorrectDim homes matches 0 run function homes:tellraw/listhomes
execute if score incorrectDim homes matches 0 run function homes:commands/general/next_click_event
execute if score incorrectDim homes matches 0 store result storage entitydb: data.homes.homelist[0].l_id int 1 run scoreboard players operation listhomes_id homes %= clickEventCount homes
