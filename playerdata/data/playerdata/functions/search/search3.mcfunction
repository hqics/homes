#get next element
data modify storage playerdata search.list2 append from storage playerdata search.list[0]
data remove storage playerdata search.list[0]
function playerdata:search/search2
