#Gets the value of the home trigger
execute store result storage playerdata search.searchfor int 1 run scoreboard players get triggerhome playerdata

#Looks for the home id
function playerdata:search/search1

#Gets the info of the home
data modify storage playerdata player.homes set from storage playerdata search.list2

#If the home id wasn't found, it executes the error script, else loads the home. 
execute if score not_found playerdata matches 1 run function playerdata:player/homes/home/error_home_does_not_exist
execute unless score not_found playerdata matches 1 run function playerdata:player/homes/home/load

#returns the Triggervalue of sethome to 0.
scoreboard players set @s home 0
