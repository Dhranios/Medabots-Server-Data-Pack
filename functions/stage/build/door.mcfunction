execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed
execute if entity @s[y_rotation=45..135,tag=allowed] unless block ~ ~ ~-1 minecraft:air run tag @s remove allowed
execute if entity @s[y_rotation=45..135,tag=allowed] unless block ~ ~1 ~-1 minecraft:air run tag @s remove allowed
execute if entity @s[y_rotation=45..135,tag=allowed] if block ~ ~-1 ~-1 minecraft:air run tag @s remove allowed
execute if entity @s[y_rotation=45..135,tag=allowed] if block ~ ~-1 ~-1 minecraft:water run tag @s remove allowed
execute if entity @s[y_rotation=45..135,tag=allowed] if block ~ ~-1 ~-1 minecraft:barrier run tag @s remove allowed
execute if entity @s[y_rotation=-45..45,tag=allowed] unless block ~-1 ~ ~ minecraft:air run tag @s remove allowed
execute if entity @s[y_rotation=-45..45,tag=allowed] unless block ~-1 ~1 ~ minecraft:air run tag @s remove allowed
execute if entity @s[y_rotation=-45..45,tag=allowed] if block ~-1 ~-1 ~ minecraft:air run tag @s remove allowed
execute if entity @s[y_rotation=-45..45,tag=allowed] if block ~-1 ~-1 ~ minecraft:water run tag @s remove allowed
execute if entity @s[y_rotation=-45..45,tag=allowed] if block ~-1 ~-1 ~ minecraft:barrier run tag @s remove allowed
execute if entity @s[y_rotation=135..-135,tag=allowed] unless block ~1 ~ ~ minecraft:air run tag @s remove allowed
execute if entity @s[y_rotation=135..-135,tag=allowed] unless block ~1 ~1 ~ minecraft:air run tag @s remove allowed
execute if entity @s[y_rotation=135..-135,tag=allowed] if block ~1 ~-1 ~ minecraft:air run tag @s remove allowed
execute if entity @s[y_rotation=135..-135,tag=allowed] if block ~1 ~-1 ~ minecraft:water run tag @s remove allowed
execute if entity @s[y_rotation=135..-135,tag=allowed] if block ~1 ~-1 ~ minecraft:barrier run tag @s remove allowed
execute if entity @s[y_rotation=-135..-45,tag=allowed] unless block ~ ~ ~1 minecraft:air run tag @s remove allowed
execute if entity @s[y_rotation=-135..-45,tag=allowed] unless block ~ ~1 ~1 minecraft:air run tag @s remove allowed
execute if entity @s[y_rotation=-135..-45,tag=allowed] if block ~ ~-1 ~1 minecraft:air run tag @s remove allowed
execute if entity @s[y_rotation=-135..-45,tag=allowed] if block ~ ~-1 ~1 minecraft:water run tag @s remove allowed
execute if entity @s[y_rotation=-135..-45,tag=allowed] if block ~ ~-1 ~1 minecraft:barrier run tag @s remove allowed

execute if entity @s[y_rotation=45..135,tag=allowed] run function medabots_server:set_blocks/door/closed/east
execute if entity @s[y_rotation=-45..45,tag=allowed] run function medabots_server:set_blocks/door/closed/north
execute if entity @s[y_rotation=135..-135,tag=allowed] run function medabots_server:set_blocks/door/closed/south
execute if entity @s[y_rotation=-135..-45,tag=allowed] run function medabots_server:set_blocks/door/closed/west
tag @e[distance=..0.7,tag=door] add no_ticking