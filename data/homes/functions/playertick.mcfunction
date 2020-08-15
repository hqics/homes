execute store success score triggerHome homes run scoreboard players enable @s home
execute store success score triggerSethome homes run scoreboard players enable @s sethome
execute store success score triggerDelhome homes run scoreboard players enable @s delhome
execute store success score triggerListhomes homes run scoreboard players enable @s listhomes
execute store success score triggerHelp homes run scoreboard players enable @s homes.help

scoreboard players set actions homes 0

execute if score triggerHome homes matches 1 run scoreboard players add actions homes 1
execute if score triggerSethome homes matches 1 run scoreboard players add actions homes 1
execute if score triggerDelhome homes matches 1 run scoreboard players add actions homes 1
execute if score triggerListhomes homes matches 1 run scoreboard players add actions homes 1
execute if score triggerHelp homes matches 1 run scoreboard players add actions homes 1

execute unless score @s homes.logged_in matches 1 store success score @s homes.logged_in run scoreboard players set actions homes 0

execute if score actions homes matches 1.. run function homes:trigger/check_tick_limit
