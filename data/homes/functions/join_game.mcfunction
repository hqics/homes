#first join with that name
execute unless score @s homes.logged_in matches 0 run function homes:enable_triggers

scoreboard players set @s homes.logged_in 1

#the player might have logged out right after the book_update_schedule function was scheduled
execute if entity @s[tag=homes.has_book,predicate=homes:homes_book_with_page_in_mainhand] run function homes:book_command
