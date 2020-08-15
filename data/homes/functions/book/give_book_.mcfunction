execute store success score selectedItem homes if predicate homes:any_item_in_mainhand
execute if score selectedItem homes matches 0 run loot replace entity @s weapon.mainhand loot homes:book
execute if score selectedItem homes matches 1 store result score inventoryNotFull homes run loot give @s loot homes:book
execute if score selectedItem homes matches 1 if score inventoryNotFull homes matches 0 at @s run loot spawn ~ ~ ~ loot homes:book
