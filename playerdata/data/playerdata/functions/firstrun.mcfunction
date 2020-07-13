scoreboard objectives add home trigger
scoreboard objectives add delhome trigger
scoreboard objectives add sethome trigger
scoreboard objectives add listhomes trigger
scoreboard objectives add playerdata dummy
scoreboard players set 4 playerdata 4
scoreboard players set 2 playerdata 2
scoreboard players set 10 playerdata 10
scoreboard players set -1 playerdata -1
scoreboard objectives add playerdata.id dummy
scoreboard players set max_id playerdata 100
scoreboard objectives add playerdata.temp dummy
scoreboard objectives add playerdata.l_on minecraft.custom:minecraft.play_one_minute
scoreboard players set firstrun playerdata 1
scoreboard players set donor_home_limit playerdata 30
scoreboard players set non_donor_home_limit playerdata 10

gamerule maxCommandChainLength 2147483647
