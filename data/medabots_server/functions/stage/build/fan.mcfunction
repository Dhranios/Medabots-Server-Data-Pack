execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if entity @s[y_rotation=45..135,tag=allowed] run function medabots_server:set_blocks/fan/east/off/range_10
execute if entity @s[y_rotation=-45..45,tag=allowed] run function medabots_server:set_blocks/fan/north/off/range_10
execute if entity @s[y_rotation=175..-135,tag=allowed] run function medabots_server:set_blocks/fan/south/off/range_10
execute if entity @s[y_rotation=-135..-45,tag=allowed] run function medabots_server:set_blocks/fan/west/off/range_10
tag @e[distance=..0.7,tag=fan] add no_ticking
execute if entity @s[scores={StageBuild=25}] run tag @e[distance=..0.7,tag=fan] add reverse