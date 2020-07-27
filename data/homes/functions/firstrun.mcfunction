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

gamerule maxCommandChainLength 2147483647

#avoid duplicate entries in case scoreboard.dat / i.e. max_dimension_id resets
data remove storage homes: dimensions

function homes:init_click_events
data modify storage homes: home_data set value '["",{"nbt":"data.homes.color1","storage":"entitydb:","interpret":true,"extra":[{"nbt":"data.homes.homelist[0].id","storage":"entitydb:","interpret":true}]}," in ",{"nbt":"data.homes.homelist[0].Dimension","storage":"entitydb:"}," at ",{"score":{"name":"x","objective":"homes"}}," ",{"score":{"name":"y","objective":"homes"}}," ",{"score":{"name":"z","objective":"homes"}}]'
