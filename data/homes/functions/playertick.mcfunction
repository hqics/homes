function homes:enable_triggers

scoreboard players set actions homes 0

execute if score triggerHome homes matches 1 run scoreboard players add actions homes 1
execute if score triggerSethome homes matches 1 run scoreboard players add actions homes 1
execute if score triggerDelhome homes matches 1 run scoreboard players add actions homes 1
execute if score triggerListhomes homes matches 1 run scoreboard players add actions homes 1

execute if score actions homes matches 1.. run function homes:check_tick_limit

scoreboard players set @s home 0
scoreboard players set @s sethome 0
scoreboard players set @s delhome 0
scoreboard players set @s listhomes 0
