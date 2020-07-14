#Sets the parameters later used in the load_player.mcfunction script
scoreboard players operation triggerhome playerdata = @s sethome
scoreboard players set hometype playerdata 1
#Loads script
function playerdata:player/load_player
