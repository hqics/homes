#searches for an element playerdata.id of a list
#search.list[....].id
#input:
#search.list - the list to search through
#search.searchfor - the id to search for
#output:
#search.list2 - the input list with the element with a matching id moved to the 0th place; if the element doesn't exist, an empty new one with the id searched for is created
#execute if score not_found playerdata matches 1 - whether the element was not found

data remove storage playerdata search.list2

function playerdata:search/search2

execute store result score . playerdata unless data storage playerdata search.list[]
execute unless data storage playerdata search.list[] run data modify storage playerdata search.list[] set value {}
execute store result score not_found playerdata run data modify storage playerdata search.list[0].id set from storage playerdata search.searchfor
execute unless score . playerdata = not_found playerdata run say !

data modify storage playerdata search.list insert 1 from storage playerdata search.list2[]
data modify storage playerdata search.list2 set from storage playerdata search.list
data remove storage playerdata search.list
data remove storage playerdata search.searchfor
