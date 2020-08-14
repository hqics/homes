execute unless score @s homes.logged_in matches ..2147483647 store success score @s homes.logged_in run function homes:trigger/enable_triggers

function homes:trigger/enable_triggers

scoreboard players set actions homes 0

execute if score triggerHome homes matches 1 run scoreboard players add actions homes 1
execute if score triggerSethome homes matches 1 run scoreboard players add actions homes 1
execute if score triggerDelhome homes matches 1 run scoreboard players add actions homes 1
execute if score triggerListhomes homes matches 1 run scoreboard players add actions homes 1
execute if score triggerHelp homes matches 1 run scoreboard players add actions homes 1

execute if score actions homes matches 1.. run function homes:trigger/check_tick_limit
