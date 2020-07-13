execute unless score @s playerdata.l_on = gametime playerdata run function playerdata:player/on_joingame

execute store success score @s playerdata.temp run scoreboard players enable @s sethome
execute if score @s playerdata.temp matches 1 run function playerdata:player/homes/_sethome

execute store success score @s playerdata.temp run scoreboard players enable @s home
execute if score @s playerdata.temp matches 1 run function playerdata:player/homes/_home

execute store success score @s playerdata.temp run scoreboard players enable @s delhome
execute if score @s playerdata.temp matches 1 run function playerdata:player/homes/_delhome

execute store success score @s playerdata.temp run scoreboard players enable @s listhomes
execute if score @s playerdata.temp matches 1 run function playerdata:player/homes/_listhomes
