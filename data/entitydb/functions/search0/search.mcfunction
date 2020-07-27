function entitydb:search0/compare

execute unless data storage entitydb: search.list[] run data modify storage entitydb: search.list set value [{}]
execute store success score not_found entitydb run data modify storage entitydb: search.list[0].l_id set from storage entitydb: search.searchfor

data modify storage entitydb: search.list insert 1 from storage entitydb: search.list2[]
data remove storage entitydb: search.list2
