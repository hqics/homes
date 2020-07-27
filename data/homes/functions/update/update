data modify storage playerdata players_ set from storage playerdata players
execute unless entity @e[type=area_effect_cloud,tag=playerdata] run summon area_effect_cloud -100 0 29999999 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["playerdata"]}
execute if data storage playerdata players_[] as @e[type=area_effect_cloud,tag=playerdata,limit=1] run function homes:update/iterate
