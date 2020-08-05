summon area_effect_cloud 0 ~ 0 {Tags:["homes.home"]}
execute as @e[type=area_effect_cloud,tag=homes.home,x=0,z=0,dx=0] run function homes:commands/home/goto

tag @e[type=item_frame] remove homes.dimension

execute if score incorrectDim homes matches 0 run tellraw @s {"nbt":"click_events[0]","storage":"homes:click_events","interpret":true,"extra":[{"extra":["Teleported to home ",{"nbt":"data.homes.color1","storage":"entitydb:","interpret":true,"extra":[{"nbt":"data.homes.homelist[0].id","storage":"entitydb:","interpret":true}]}],"nbt":"data.homes.color0","storage":"entitydb:","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},{"text":"Click to teleport."}]}}]}
execute if score incorrectDim homes matches 0 run function homes:tellraw/listhomes
execute if score incorrectDim homes matches 0 run function homes:commands/general/next_click_event
