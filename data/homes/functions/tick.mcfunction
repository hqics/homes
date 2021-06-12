execute as @a run function homes:playertick

execute if data storage homes: _saltshaker.homes[] in entitydb: run function homes:_saltshaker/get_commands

schedule function homes:tick 1
