execute if score not_found entitydb matches 0 run data modify storage entitydb: data.homes.undo set from storage entitydb: data.homes.homelist[0]
execute if score not_found entitydb matches 1 run data remove storage entitydb: data.homes.undo

execute if score not_found entitydb matches 0 run function homes:commands/general/get_home_information
data modify block 0 0 -1 Text1 set value '{"nbt":"home_data","storage":"homes:","interpret":true}'

data modify storage homes: player set from entity @s
data modify storage entitydb: data.homes.homelist[0].Rotation set from storage homes: player.Rotation
data modify storage entitydb: data.homes.homelist[0].Pos set from storage homes: player.Pos
data modify storage entitydb: data.homes.homelist[0].Dimension set from storage homes: player.Dimension
data remove storage homes: player

function homes:commands/general/get_home_information

execute if score not_found entitydb matches 1 run tellraw @s {"nbt":"click_events[0]","storage":"homes:click_events","interpret":true,"extra":[{"extra":["Set home ",{"nbt":"home_data","storage":"homes:","interpret":true}],"nbt":"data.homes.color0","storage":"entitydb:","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},{"text":"Click to teleport."}]}}]}
execute if score not_found entitydb matches 0 run tellraw @s {"nbt":"click_events[0]","storage":"homes:click_events","interpret":true,"extra":[{"extra":["Set home ",{"nbt":"home_data","storage":"homes:","interpret":true},",\npreviously in ",{"nbt":"data.homes.homelist[0].Dimension","storage":"entitydb:"}," at ",{"score":{"name":"x","objective":"homes"}}," ",{"score":{"name":"y","objective":"homes"}}," ",{"score":{"name":"z","objective":"homes"}}],"nbt":"data.homes.color0","storage":"entitydb:","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},{"text":"Click to teleport."}]}}]}
function homes:tellraw/listhomes
#{"nbt":"click_events[0]","storage":"homes:click_events","interpret":true,"extra":[]}
#"hoverEvent":{"action":"show_text","contents":[{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},{"text":"Click to teleport."}]}

function homes:commands/general/next_click_event
execute store result storage entitydb: data.homes.homelist[0].l_id int 1 run scoreboard players operation listhomes_id homes %= clickEventCount homes


data modify storage entitydb: search.list set from storage homes: dimensions
data modify storage entitydb: search.searchfor set from storage entitydb: data.homes.homelist[0].Dimension
function entitydb:search/search
data modify storage homes: dimensions set from storage entitydb: search.list
data remove storage entitydb: search

forceload add 0 0
execute if score not_found entitydb matches 1 store result storage homes: dimensions[0].s_id int 1 run scoreboard players add max_dimension_id homes 1
execute store result score dimension_id homes run data get storage homes: dimensions[0].s_id
scoreboard players set found homes 0
execute as @e[type=item_frame,tag=homes.dimensionMarker] if score @s homes = dimension_id homes store success score found homes run tp 0 ~ 0
execute if score found homes matches 0 run summon item_frame 0 ~ 0 {Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["homes.dimensionMarker"]}
execute if score found homes matches 0 run scoreboard players operation @e[type=item_frame,tag=homes.dimensionMarker,dx=0] homes = dimension_id homes
