execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if entity @s[y_rotation=45..135,tag=allowed] run function medabots_server:set_blocks/press_wall/east/range_10/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed] run function medabots_server:set_blocks/press_wall/north/range_10/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed] run function medabots_server:set_blocks/press_wall/south/range_10/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed] run function medabots_server:set_blocks/press_wall/west/range_10/power_1
tag @e[distance=..0.7,tag=press_wall] add no_ticking