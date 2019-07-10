execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if entity @s[y_rotation=45..135,tag=allowed] run function medabots_server:spawn_entities/rubberobo/east
execute if entity @s[y_rotation=-45..45,tag=allowed] run function medabots_server:spawn_entities/rubberobo/north
execute if entity @s[y_rotation=135..-135,tag=allowed] run function medabots_server:spawn_entities/rubberobo/south
execute if entity @s[y_rotation=-135..-45,tag=allowed] run function medabots_server:spawn_entities/rubberobo/west
tag @e[distance=..0.7,tag=rubberobo] add no_ticking