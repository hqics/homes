execute store result entity @s Pos[0] double 1 run data get storage playerdata players_[0].scoreboard_id
execute at @s run function homes:update/load_player

data remove storage playerdata players_[0]
execute if data storage playerdata players_[] run function homes:update/iterate
