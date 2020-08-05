execute as @a[tag=homes.has_book,predicate=homes:homes_book_with_page_in_mainhand] run function homes:book/command
execute store result storage entitydb: data.homes.homelist[0].l_id int 1 run scoreboard players operation listhomes_id homes %= clickEventCount homes
