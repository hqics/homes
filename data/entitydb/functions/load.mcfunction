scoreboard objectives add entitydb dummy
scoreboard players set 16 entitydb 16
scoreboard players set 65536 entitydb 65536

#execute in entitydb: run forceload add 0 0
#summoning an entity in a custom dimension only works if the load function is executed via the "reload" command, but teleporting works fine
#execute unless entity d28b2115-c99e-84c2-6e45-963d34071d44 run summon item_frame ~ ~ ~ {UUID:[I;-762633963,-912358206,1850054205,872881476],Fixed:1b,Invisible:1b,Invulnerable:1b}
#execute in entitydb: run tp d28b2115-c99e-84c2-6e45-963d34071d44 0 0 0
