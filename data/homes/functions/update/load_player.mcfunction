forceload add ~ ~
data remove storage playerdata hom
data modify storage playerdata hom set from block ~ ~ ~ RecordItem.tag.player
data modify storage entitydb: UUID set from storage playerdata players_[0].id
function homes:get_player
data modify storage entitydb: data.homes.homelist set from storage playerdata hom.homes

execute unless data storage entitydb: data.homes.homelist[] run data remove storage entitydb: data.homes.homelist

data remove storage entitydb: homelist2

execute if data storage entitydb: data.homes.homelist[] in entitydb: run function homes:update/iterateh

data modify storage entitydb: data.homes.homelist set from storage entitydb: homelist2
data remove storage entitydb: homelist2

function entitydb:save
forceload remove ~ ~
