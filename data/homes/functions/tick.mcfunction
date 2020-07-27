schedule function homes:tick 1

execute store result score playerCount homes if entity @a[scores={homes.logged_in=1}]
#a player joined the game
execute as @a unless score @s homes.logged_in matches 1 run function homes:join_game
#a player left the game
execute if score playerCount homes < lastPlayerCount homes run scoreboard players set * homes.logged_in 0
execute if score playerCount homes < lastPlayerCount homes run scoreboard players set @a homes.logged_in 1
execute store result score lastPlayerCount homes if entity @a

execute as @a run function homes:playertick


execute if data storage homes: _saltshaker.homes[] in entitydb: run function homes:_saltshaker/get_commands
advancement revoke @a only homes:book_update
