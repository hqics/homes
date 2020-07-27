#playername
scoreboard players set not_found homes 1
execute if data storage homes: _saltshaker.homes[0].playername as @a run function homes:_saltshaker/iterate_players

#uuid
data modify storage entitydb: UUID set from storage homes: _saltshaker.homes[0].uuid
execute if data storage homes: _saltshaker.homes[0].uuid run function homes:_saltshaker/_saltshaker_command
data remove storage entitydb: UUID

data remove storage homes: _saltshaker.homes[0]
execute if data storage homes: _saltshaker.homes[] run function homes:_saltshaker/iterate_command_list
