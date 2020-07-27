scoreboard objectives add homes dummy
execute unless score firstrun homes matches 2 run function homes:firstrun


schedule function homes:setblock 1
schedule function homes:tick 1
