execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if entity @s[y_rotation=45..135,tag=allowed] run function medabots_server:set_blocks/spring_wall/east/delay_10/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed] run function medabots_server:set_blocks/spring_wall/north/delay_10/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed] run function medabots_server:set_blocks/spring_wall/south/delay_10/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed] run function medabots_server:set_blocks/spring_wall/west/delay_10/power_1
tag @e[distance=..0.7,tag=spring_wall] add no_ticking