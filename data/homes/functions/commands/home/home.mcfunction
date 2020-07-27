execute if score not_found entitydb matches 1 run function homes:tellraw/home_does_not_exist
execute if score not_found entitydb matches 1 run data remove storage entitydb: data.homes.homelist[0]
execute if score not_found entitydb matches 0 run function homes:commands/home/search_for_dimension_in_storage
