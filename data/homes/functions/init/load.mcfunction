scoreboard objectives add homes dummy
execute unless score firstrun homes matches 3 in entitydb: run function homes:init/firstrun
execute in entitydb: run schedule function homes:tick 1
