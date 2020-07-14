#Teleports the player across all dimensions
execute in overworld run tp @s[nbt={Dimension:"minecraft:the_nether"}] 0. 0 0.
execute in the_end run tp @s[nbt={Dimension:"minecraft:overworld"}] 0. 0 0.
execute in the_nether run tp @s[nbt={Dimension:"minecraft:the_end"}] 0. 0 0.
