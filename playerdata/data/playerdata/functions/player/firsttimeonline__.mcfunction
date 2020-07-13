forceload add ~ ~
setblock ~ ~ ~ bedrock
setblock ~ ~ ~ jukebox{RecordItem:{id:"minecraft:chest_minecart",Count:1b}}
data modify block ~ ~ ~ RecordItem.tag.player set from storage playerdata search.list2[0]
forceload remove ~ ~
