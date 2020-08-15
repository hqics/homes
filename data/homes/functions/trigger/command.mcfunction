execute if score triggerHome homes matches 1 run scoreboard players operation homeId homes = @s home
execute if score triggerSethome homes matches 1 run scoreboard players operation homeId homes = @s sethome
execute if score triggerDelhome homes matches 1 run scoreboard players operation homeId homes = @s delhome
execute if score triggerListhomes homes matches 1 run scoreboard players operation homeId homes = @s listhomes
scoreboard players set undo homes 0

scoreboard players set regularCommand homes 10
execute if score triggerHelp homes matches 1 store success score regularCommand homes run function homes:commands/help/help
execute if score homeId homes matches 1 unless score triggerListhomes homes matches 1 unless score triggerHelp homes matches 1 store success score regularCommand homes run function homes:book/give_book
execute if score triggerListhomes homes matches 1 if score homeId homes matches -32..-1 store success score regularCommand homes run function homes:trigger/set_color
execute if score triggerListhomes homes matches 1 if score homeId homes matches -33 run scoreboard players set undo homes 1
execute if score triggerListhomes homes matches 1 if score homeId homes matches -33 run scoreboard players set triggerListhomes homes 0
execute if score triggerListhomes homes matches 1 if score homeId homes matches ..-34 store success score regularCommand homes run function homes:trigger/click_event

execute if score regularCommand homes matches 10 run function homes:trigger/command_
