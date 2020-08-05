gamerule maxCommandChainLength 2147483647

scoreboard players set firstrun homes 2
scoreboard players set 2 homes 2
scoreboard players set donor_home_limit homes 50
scoreboard players set non_donor_home_limit homes 10
scoreboard objectives add home trigger
scoreboard objectives add delhome trigger
scoreboard objectives add sethome trigger
scoreboard objectives add listhomes trigger
scoreboard objectives add homes dummy
scoreboard objectives add homes.logged_in dummy

data remove storage homes: dimensions
kill @e[tag=homes.dimensionMarker]
function homes:init/init_click_events
scoreboard players set listhomes_id homes -1
execute store result score clickEventCount homes if data storage homes:click_events click_events[]
data modify storage homes: home_data set value '["",{"nbt":"data.homes.color1","storage":"entitydb:","interpret":true,"extra":[{"nbt":"data.homes.homelist[0].id","storage":"entitydb:","interpret":true}]}," in ",{"nbt":"data.homes.homelist[0].Dimension","storage":"entitydb:"}," at ",{"score":{"name":"x","objective":"homes"}}," ",{"score":{"name":"y","objective":"homes"}}," ",{"score":{"name":"z","objective":"homes"}}]'

execute in entitydb: run forceload add 0 0
execute in entitydb: run setblock 0 0 -1 oak_sign
execute in entitydb: run setblock -1 0 0 shulker_box
