execute if entity @s[tag=!donor] run scoreboard players operation home_limit homes = non_donor_home_limit homes
execute if entity @s[tag=donor] run scoreboard players operation home_limit homes = donor_home_limit homes
execute store result score count homes run data get storage entitydb: data.homes.homelist

execute if score count homes <= home_limit homes at @s run function homes:commands/sethome/test_if_location_is_valid
execute if score count homes > home_limit homes run function homes:commands/sethome/error_too_many_homes
