#Sets the parameters later used in the load_player script
scoreboard players operation triggerhome playerdata = @s home
scoreboard players set hometype playerdata 2
#Loads script
function playerdata:player/load_player
