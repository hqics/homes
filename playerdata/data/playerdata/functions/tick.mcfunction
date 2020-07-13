forceload add -100 29999999
tp @e[type=area_effect_cloud,tag=playerdata] -100 0 29999999
execute unless entity @e[type=area_effect_cloud,tag=playerdata] run summon area_effect_cloud -100 0 29999999 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["playerdata"]}

execute as @a run function playerdata:player/tick

execute store result score gametime playerdata run time query gametime
