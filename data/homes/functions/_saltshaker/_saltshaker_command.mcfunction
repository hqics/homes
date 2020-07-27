execute unless data storage homes: _saltshaker.homes[0].redirect if entity @s run function homes:_saltshaker/_saltshaker_command_

scoreboard players set not_found_r homes 1
execute if data storage homes: _saltshaker.homes[0].redirect as @a run function homes:_saltshaker/redirect/iterate_players
