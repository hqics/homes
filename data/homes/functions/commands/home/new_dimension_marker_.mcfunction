forceload add ~ ~
summon item_frame ~ ~ ~ {Invisible:1b,Fixed:1b,Tags:["homes.dimensionMarker","homes.dimension"]}
execute store result score @e[type=item_frame,tag=homes.dimensionMarker,dx=0] homes run data get storage homes: dimensions[0].s_id
scoreboard players set found homes 1
