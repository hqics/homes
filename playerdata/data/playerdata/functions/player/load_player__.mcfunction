forceload add ~ ~

#gets the data of the player from the jukebox block. Stores the homes in search.list
data modify storage playerdata player set from block ~ ~ ~ RecordItem.tag.player
data modify storage playerdata search.list set from storage playerdata player.homes

#starts the actual home functions.
execute if score hometype playerdata matches 1 run function playerdata:player/homes/sethome
execute if score hometype playerdata matches 2 run function playerdata:player/homes/home
execute if score hometype playerdata matches 3 run function playerdata:player/homes/delhome
execute if score hometype playerdata matches 4 run function playerdata:player/homes/listhomes

#appends the updated data of the played back into the jukebox. Removes the data of the player in the placeholder
data modify block ~ ~ ~ RecordItem.tag.player set from storage playerdata player
data remove storage playerdata player
forceload remove ~ ~
