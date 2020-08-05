execute unless score triggerListhomes homes matches 1 in entitydb: run data modify block 0 0 -1 Text1 set value '{"score":{"name":"homeId","objective":"homes"}}'
execute unless score triggerListhomes homes matches 1 in entitydb: run data modify storage homes: homeId set from block 0 0 -1 Text1

function homes:commands/general/main
