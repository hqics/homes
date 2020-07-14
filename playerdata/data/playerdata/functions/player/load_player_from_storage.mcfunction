#gets the UUID of the player and saves the players UUID and scoreboard.id in a list.
data modify storage playerdata search.list set from storage playerdata players
data modify storage playerdata search.searchfor set from entity @s UUID

#looks for the playerdata.id of the player
function playerdata:search/search1

#players gets the information from search.list2
data modify storage playerdata players set from storage playerdata search.list2
