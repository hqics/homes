#update undo home
execute if score not_found entitydb matches 0 run data modify storage entitydb: data.homes.undo set from storage entitydb: data.homes.homelist[0]
execute if score not_found entitydb matches 1 run data remove storage entitydb: data.homes.undo

#tellraw
execute if score not_found entitydb matches 0 run function homes:commands/general/get_home_information
execute if score not_found entitydb matches 0 in entitydb: run data modify block 0 0 -1 Text1 set value '{"nbt":"home_data","storage":"homes:","interpret":true}'

#save player data
data modify storage homes: player set from entity @s
data modify storage entitydb: data.homes.homelist[0].Rotation set from storage homes: player.Rotation
data modify storage entitydb: data.homes.homelist[0].Pos set from storage homes: player.Pos
data modify storage entitydb: data.homes.homelist[0].Dimension set from storage homes: player.Dimension
data remove storage homes: player

#tellraw
function homes:commands/general/get_home_information
execute if score not_found entitydb matches 1 run tellraw @s [{"nbt":"click_events[0]","storage":"homes:click_events","interpret":true},[{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},"Click to teleport."]}},"Set home ",{"nbt":"home_data","storage":"homes:","interpret":true}]]
execute if score not_found entitydb matches 0 in entitydb: run tellraw @s [{"nbt":"click_events[0]","storage":"homes:click_events","interpret":true},[{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},"Click to teleport."]}},"Set home ",{"nbt":"home_data","storage":"homes:","interpret":true},",\npreviously in ",{"nbt":"Text1","block":"0 0 -1","interpret":true}]]
function homes:tellraw/listhomes
function homes:commands/general/next_click_event


##add dimension marker if needed
#search for dimension in storage
data modify storage entitydb: search.list set from storage homes: dimensions
data modify storage entitydb: search.searchfor set from storage entitydb: data.homes.homelist[0].Dimension
function entitydb:search/search
data modify storage homes: dimensions set from storage entitydb: search.list
data remove storage entitydb: search

forceload add ~ ~
execute if score not_found entitydb matches 1 store result storage homes: dimensions[0].s_id int 1 run scoreboard players add max_dimension_id homes 1
execute store result score dimension_id homes run data get storage homes: dimensions[0].s_id
scoreboard players set found homes 0
execute as @e[type=item_frame,tag=homes.dimensionMarker] if score @s homes = dimension_id homes run scoreboard players set found homes 1
execute if score found homes matches 0 run summon item_frame ~ ~ ~ {Invisible:1b,Fixed:1b,Tags:["homes.dimensionMarker"]}
execute if score found homes matches 0 run scoreboard players operation @e[type=item_frame,tag=homes.dimensionMarker,dx=0] homes = dimension_id homes
