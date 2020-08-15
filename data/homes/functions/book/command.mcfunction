function homes:get_player

scoreboard players set triggerListhomes homes 0
scoreboard players set undo homes 0
execute store success score triggerHome homes if data storage entitydb: data.homes{bookCommand:"home"}
execute store success score triggerSethome homes if data storage entitydb: data.homes{bookCommand:"sethome"}
execute store success score triggerDelhome homes if data storage entitydb: data.homes{bookCommand:"delhome"}
data remove storage entitydb: data.homes.bookCommand

data modify storage homes: homeId set from entity @s SelectedItem.tag.pages[0]
execute unless predicate homes:written_book_in_mainhand in entitydb: run data modify block 0 0 -1 Text1 set value '{"nbt":"homeId","storage":"homes:"}'
execute unless predicate homes:written_book_in_mainhand in entitydb: run data modify storage homes: homeId set from block 0 0 -1 Text1

tag @s remove homes.has_book
clear @s #lectern_books{homes:1b}

function homes:commands/general/main

function entitydb:save
