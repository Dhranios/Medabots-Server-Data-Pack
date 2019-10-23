execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if entity @s[y_rotation=45..135,tag=allowed] run function medabots_server:set_blocks/laser_trap/east/delay_10/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed] run function medabots_server:set_blocks/laser_trap/north/delay_10/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed] run function medabots_server:set_blocks/laser_trap/south/delay_10/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed] run function medabots_server:set_blocks/laser_trap/west/delay_10/power_1
tag @e[distance=..0.7,tag=laser_trap] add no_ticking