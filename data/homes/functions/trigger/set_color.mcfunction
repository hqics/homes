scoreboard players set unnormalCommand homes 1

scoreboard players set colortype homes 0
execute if score homeId homes matches ..-17 store success score colortype homes run scoreboard players add homeId homes 16

execute if score homeId homes matches -1 run data modify storage homes: color set value '{"text":"","color":"black"}'
execute if score homeId homes matches -2 run data modify storage homes: color set value '{"text":"","color":"dark_blue"}'
execute if score homeId homes matches -3 run data modify storage homes: color set value '{"text":"","color":"dark_green"}'
execute if score homeId homes matches -4 run data modify storage homes: color set value '{"text":"","color":"dark_aqua"}'
execute if score homeId homes matches -5 run data modify storage homes: color set value '{"text":"","color":"dark_red"}'
execute if score homeId homes matches -6 run data modify storage homes: color set value '{"text":"","color":"dark_purple"}'
execute if score homeId homes matches -7 run data modify storage homes: color set value '{"text":"","color":"gold"}'
execute if score homeId homes matches -8 run data modify storage homes: color set value '{"text":"","color":"gray"}'
execute if score homeId homes matches -9 run data modify storage homes: color set value '{"text":"","color":"dark_gray"}'
execute if score homeId homes matches -10 run data modify storage homes: color set value '{"text":"","color":"blue"}'
execute if score homeId homes matches -11 run data modify storage homes: color set value '{"text":"","color":"green"}'
execute if score homeId homes matches -12 run data modify storage homes: color set value '{"text":"","color":"aqua"}'
execute if score homeId homes matches -13 run data modify storage homes: color set value '{"text":"","color":"red"}'
execute if score homeId homes matches -14 run data modify storage homes: color set value '{"text":"","color":"light_purple"}'
execute if score homeId homes matches -15 run data modify storage homes: color set value '{"text":"","color":"yellow"}'
execute if score homeId homes matches -16 run data modify storage homes: color set value '{"text":"","color":"white"}'


execute if score colortype homes matches 0 run tellraw @s [{"nbt":"color","storage":"homes:","interpret":true},"Set the general text color."]
execute if score colortype homes matches 1 run tellraw @s [{"nbt":"color","storage":"homes:","interpret":true},"Set the text color of the homes."]


execute if score colortype homes matches 0 run data modify storage entitydb: data.homes.color0 set from storage homes: color
execute if score colortype homes matches 1 run data modify storage entitydb: data.homes.color1 set from storage homes: color
data remove storage homes: color
