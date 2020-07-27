data modify storage entitydb: search.list set from storage homes: dimensions
data modify storage entitydb: search.searchfor set from storage entitydb: data.homes.homelist[0].Dimension
function entitydb:search/search
data modify storage homes: dimensions set from storage entitydb: search.list
data remove storage entitydb: search

execute if score not_found entitydb matches 1 run function homes:tellraw/dimension_not_found
execute if score not_found entitydb matches 1 run data remove storage homes: dimensions[0]
execute if score not_found entitydb matches 0 run function homes:commands/home/search_for_dimension_marker_entity
