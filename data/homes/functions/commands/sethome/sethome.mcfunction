execute if entity @s[tag=!donor] run scoreboard players operation home_limit homes = non_donor_home_limit homes
execute if entity @s[tag=donor] run scoreboard players operation home_limit homes = donor_home_limit homes
execute store result score count homes if data storage entitydb: data.homes.homelist[]

execute if score count homes <= home_limit homes at @s run function homes:commands/sethome/check_location_validity
execute if score count homes > home_limit homes run function homes:commands/sethome/error_too_many_homes
