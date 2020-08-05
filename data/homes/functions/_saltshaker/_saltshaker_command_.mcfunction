data modify storage homes: _saltshaker.command set from storage homes: _saltshaker.homes[0].command
execute store success score triggerHome homes if data storage homes: _saltshaker{command:"home"}
execute store success score triggerSethome homes if data storage homes: _saltshaker{command:"sethome"}
execute store success score triggerDelhome homes if data storage homes: _saltshaker{command:"delhome"}
execute store success score triggerListhomes homes if data storage homes: _saltshaker{command:"listhomes"}
execute store success score undo homes if data storage homes: _saltshaker{command:"undo"}

execute unless score triggerListhomes homes matches 1 unless score undo homes matches 1 run data modify block 0 0 -1 Text1 set value '{"nbt":"_saltshaker.homes[0].homename","storage":"homes:"}'
execute unless score triggerListhomes homes matches 1 unless score undo homes matches 1 run data modify storage homes: homeId set from block 0 0 -1 Text1

function homes:get_player

function homes:commands/general/main

execute unless data storage homes: _saltshaker.homes[0].redirect run function entitydb:save

data remove storage entitydb: entities
data remove storage entitydb: data
