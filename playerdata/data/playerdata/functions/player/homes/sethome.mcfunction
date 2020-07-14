#Gets the value of the sethome trigger
execute store result storage playerdata search.searchfor int 1 run scoreboard players get triggerhome playerdata

#Searches the for the home id. 
function playerdata:search/search1

#reassigns list of homes to player.homes
data modify storage playerdata player.homes set from storage playerdata search.list2
execute store result score count playerdata run data get storage playerdata player.homes

#Checks wether the player has the "donor" tag. Assigns the home limit according to it.
#/tag <player> add donor to assign in-game.
scoreboard players operation home_limit playerdata = non_donor_home_limit playerdata
execute if entity @s[tag=donor] run scoreboard players operation home_limit playerdata = donor_home_limit playerdata

#Checks if the homelimit has been reached. Runs create.mcfunction if it isn't 
execute if score count playerdata <= home_limit playerdata run function playerdata:player/homes/home/create
execute if score count playerdata > home_limit playerdata run function playerdata:player/homes/home/error_too_many_homes

#returns the Triggervalue of sethome to 0.
scoreboard players set @s sethome 0
