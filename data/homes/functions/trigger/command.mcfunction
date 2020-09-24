execute if score triggerHome homes matches 1 run scoreboard players operation homeId homes = @s home
execute if score triggerSethome homes matches 1 run scoreboard players operation homeId homes = @s sethome
execute if score triggerDelhome homes matches 1 run scoreboard players operation homeId homes = @s delhome
execute if score triggerListhomes homes matches 1 run scoreboard players operation homeId homes = @s listhomes
scoreboard players set undo homes 0
#undo command
execute if score triggerListhomes homes matches 1 if score homeId homes matches -33 store success score undo homes run scoreboard players set triggerListhomes homes 0

scoreboard players set unnormalCommand homes 0
#help command
execute if score triggerHelp homes matches 1 run function homes:commands/help/help
#give book
execute if score homeId homes matches 1 unless score triggerListhomes homes matches 1 unless score triggerHelp homes matches 1 run function homes:book/give_book
#change the text color
execute if score triggerListhomes homes matches 1 if score homeId homes matches -32..-1 run function homes:trigger/set_color
#click event
execute if score triggerListhomes homes matches 1 if score homeId homes matches ..-34 run function homes:trigger/click_event

execute if score unnormalCommand homes matches 0 run function homes:trigger/command_
