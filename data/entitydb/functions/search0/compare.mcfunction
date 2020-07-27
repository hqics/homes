data modify storage entitydb: search.compare set from storage entitydb: search.searchfor
execute store success score notFinished entitydb run data modify storage entitydb: search.compare set from storage entitydb: search.list[0].l_id
execute if data storage entitydb: search.list[] unless data storage entitydb: search.list[0].l_id run scoreboard players set notFinished entitydb 1
execute if score notFinished entitydb matches 1 run function entitydb:search0/next_element
