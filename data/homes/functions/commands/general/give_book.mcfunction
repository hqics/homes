execute if score triggerHome homes matches 1 run data modify storage entitydb: data.homes.bookCommand set value "home"
execute if score triggerSethome homes matches 1 run data modify storage entitydb: data.homes.bookCommand set value "sethome"
execute if score triggerDelhome homes matches 1 run data modify storage entitydb: data.homes.bookCommand set value "delhome"
tag @s add homes.has_book

execute store result score itemCount homes run clear @s #lectern_books{homes:1b} 0
execute if score itemCount homes matches 0 run function homes:commands/general/give_book_

execute if score triggerHome homes matches 1 run tellraw @s [{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true,"italic":false},"Please type the name of the home you'd like to visit inside the book in your inventory."]
execute if score triggerSethome homes matches 1 run tellraw @s [{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true,"italic":false},"Please type the name of the home you'd like to set inside the book in your inventory."]
execute if score triggerDelhome homes matches 1 run tellraw @s [{"nbt":"data.homes.color0","storage":"entitydb:","interpret":true,"italic":false},"Please type the name of the home you'd like to delete inside the book in your inventory."]
