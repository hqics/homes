loot replace block -1 0 0 container.0 loot homes:head
data modify storage homes: _saltshaker.compare set from block -1 0 0 Items[0].tag.SkullOwner.Name
execute store success score not_found_r homes run data modify storage homes: _saltshaker.compare set from storage homes: _saltshaker.homes[0].redirect
execute if score not_found_r homes matches 0 run function homes:_saltshaker/_saltshaker_command_
