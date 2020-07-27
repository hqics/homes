tag @s remove homes.home
tag @s remove homes.delhome
tag @s remove homes.sethome
execute if score triggerHome homes matches 1 run tag @s add homes.home
execute if score triggerSethome homes matches 1 run tag @s add homes.sethome
execute if score triggerDelhome homes matches 1 run tag @s add homes.delhome
tag @s add homes.has_book

execute store result score itemCount homes run clear @s #lectern_books{homes:1b} 0
execute if score itemCount homes matches 0 run function homes:commands/general/give_book_
