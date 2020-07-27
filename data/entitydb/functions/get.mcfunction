execute in entitydb: run forceload add 0 0
execute unless entity d28b2115-c99e-84c2-6e45-963d34071d44 in entitydb: run summon item_frame 0 0 0 {UUID:[I;-762633963,-912358206,1850054205,872881476],Fixed:1b,Invisible:1b,Invulnerable:1b}

execute unless data storage entitydb: UUID run data modify storage entitydb: UUID set from entity @s UUID
execute if data storage entitydb: UUID as d28b2115-c99e-84c2-6e45-963d34071d44 run function entitydb:calculate_coordinates_and_get_jukebox_data
