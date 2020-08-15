gamerule maxCommandChainLength 2147483647

scoreboard players set firstrun homes 3
scoreboard players set 2 homes 2
scoreboard players set donor_home_limit homes 50
scoreboard players set non_donor_home_limit homes 10
scoreboard objectives add home trigger
scoreboard objectives add delhome trigger
scoreboard objectives add sethome trigger
scoreboard objectives add listhomes trigger
scoreboard objectives add homes.help trigger
scoreboard objectives add homes dummy
scoreboard objectives add homes.logged_in dummy

scoreboard players set max_dimension_id homes 3
data merge storage homes: {dimensions:[{s_id:1,id:"minecraft:overworld"},{s_id:2,id:"minecraft:the_nether"},{s_id:3,id:"minecraft:the_end"}]}
kill @e[tag=homes.dimensionMarker]

function homes:init/init_click_events
scoreboard players set listhomes_id homes -1
execute store result score clickEventCount homes if data storage homes:click_events click_events[]
data modify storage homes: home_data set value '["",[{"nbt":"data.homes.color1","storage":"entitydb:","interpret":true},{"nbt":"data.homes.homelist[0].id","storage":"entitydb:","interpret":true}]," in ",{"nbt":"data.homes.homelist[0].Dimension","storage":"entitydb:"}," at ",{"score":{"name":"x","objective":"homes"}}," ",{"score":{"name":"y","objective":"homes"}}," ",{"score":{"name":"z","objective":"homes"}}]'

schedule function homes:init/setblocks 1

#backwards compatability
scoreboard players enable * homes.help
