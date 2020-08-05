execute if score triggerHome homes matches 1 run data modify storage entitydb: data.homes.bookCommand set value "home"
execute if score triggerSethome homes matches 1 run data modify storage entitydb: data.homes.bookCommand set value "sethome"
execute if score triggerDelhome homes matches 1 run data modify storage entitydb: data.homes.bookCommand set value "delhome"
tag @s add homes.has_book

execute store result score itemCount homes run clear @s #lectern_books{homes:1b} 0
execute if score itemCount homes matches 0 run function homes:commands/general/give_book_
