execute store success score triggerHome homes if entity @s[tag=homes.home]
execute store success score triggerSethome homes if entity @s[tag=homes.sethome]
execute store success score triggerDelhome homes if entity @s[tag=homes.delhome]
scoreboard players set triggerListhomes homes 0

data modify storage homes: homeId set from entity @s SelectedItem.tag.pages[0]
execute unless predicate homes:written_book_in_mainhand in entitydb: run data modify block 0 0 -1 Text1 set value '{"nbt":"homeId","storage":"homes:"}'
execute unless predicate homes:written_book_in_mainhand in entitydb: run data modify storage homes: homeId set from block 0 0 -1 Text1

tag @s remove homes.home
tag @s remove homes.delhome
tag @s remove homes.sethome
tag @s remove homes.has_book
clear @s #lectern_books{homes:1b}

function homes:commands/general/main
