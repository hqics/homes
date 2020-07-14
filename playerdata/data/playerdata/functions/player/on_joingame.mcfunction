#enables all the triggers for the given player
scoreboard players enable @s sethome
scoreboard players enable @s home
scoreboard players enable @s delhome
scoreboard players enable @s listhomes

#loads player infos
function playerdata:player/load_player_from_storage

#updates playerdata.id. If the id wasn't found during player/load_player_from_storage.mcfunction, the player joins for the first time 
#and player/firsttimeonline.mcfunction gets executed.
execute if score not_found playerdata matches 1 run function playerdata:player/firsttimeonline
execute store result score @s playerdata.id run data get storage playerdata players[0].scoreboard_id

#1. search in storage list for the player
#2. not found -> copy data
#3. update scoreboard id

scoreboard players operation @s playerdata.l_on = gametime playerdata
