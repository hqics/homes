execute if score triggerHome homes matches 1 run scoreboard players operation homeId homes = @s home
execute if score triggerSethome homes matches 1 run scoreboard players operation homeId homes = @s sethome
execute if score triggerDelhome homes matches 1 run scoreboard players operation homeId homes = @s delhome
execute if score triggerListhomes homes matches 1 run scoreboard players operation homeId homes = @s listhomes
scoreboard players set undo homes 0

execute if score homeId homes matches 1 unless score triggerListhomes homes matches 1 run function homes:commands/general/give_book

scoreboard players set c homes 1
execute if score homeId homes matches 1 run scoreboard players set c homes 0
execute if score triggerListhomes homes matches 1 run scoreboard players set c homes 1
execute if score triggerListhomes homes matches 1 if score homeId homes matches ..-1 run scoreboard players set c homes 0
execute if score triggerListhomes homes matches 1 if score homeId homes matches -32..-1 run function homes:trigger/set_color
execute if score triggerListhomes homes matches 1 if score homeId homes matches ..-33 run function homes:trigger/click_event
execute if score c homes matches 1 run function homes:trigger/command_
