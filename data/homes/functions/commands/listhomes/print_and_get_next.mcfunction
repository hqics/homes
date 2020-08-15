#round to the nearest integer coordinates
execute store result score x homes run data get storage entitydb: data.homes.homelist[-1].Pos[0] 2
execute store result score y homes run data get storage entitydb: data.homes.homelist[-1].Pos[1] 2
execute store result score z homes run data get storage entitydb: data.homes.homelist[-1].Pos[2] 2
scoreboard players add x homes 1
scoreboard players add y homes 1
scoreboard players add z homes 1
scoreboard players operation x homes /= 2 homes
scoreboard players operation y homes /= 2 homes
scoreboard players operation z homes /= 2 homes

tellraw @s [{"hoverEvent":{"action":"show_text","contents":[{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},"Click to teleport."]},"nbt":"data.homes.color0","storage":"entitydb:","interpret":true},[{"nbt":"click_events[0]","storage":"homes:click_events","interpret":true},[{"nbt":"data.homes.color1","storage":"entitydb:","interpret":true},{"nbt":"data.homes.homelist[-1].id","storage":"entitydb:","interpret":true}]," in ",{"nbt":"data.homes.homelist[-1].Dimension","storage":"entitydb:"}," at ",{"score":{"name":"x","objective":"homes"}}," ",{"score":{"name":"y","objective":"homes"}}," ",{"score":{"name":"z","objective":"homes"}}]]

function homes:commands/general/next_click_event_
execute store result storage entitydb: data.homes.homelist[-1].l_id int 1 run scoreboard players operation listhomes_id homes %= clickEventCount homes

#get next home
data modify storage entitydb: data.homes.homelist_temp prepend from storage entitydb: data.homes.homelist[-1]
data remove storage entitydb: data.homes.homelist[-1]
#run this function again if there is a next home
execute if data storage entitydb: data.homes.homelist[] run function homes:commands/listhomes/print_and_get_next
