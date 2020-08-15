advancement revoke @s only homes:book_update

#if we don't schedule it, the book isn't cleared on the client, and if the player teleports between dimensions, they are frozen
execute if entity @s[tag=homes.has_book,predicate=homes:homes_book_with_page_in_mainhand] run schedule function homes:book/book_update_schedule 1

clear @s[tag=!homes.has_book] #lectern_books{homes:1b}
execute store result score itemCount homes run clear @s[tag=homes.has_book] #lectern_books{homes:1b} 0
execute if score itemCount homes matches 2.. run clear @s #lectern_books{homes:1b}
execute if score itemCount homes matches 2.. run function homes:book/give_book_
