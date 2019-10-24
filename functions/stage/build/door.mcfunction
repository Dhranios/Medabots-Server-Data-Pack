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

execute if entity @s[y_rotation=45..135,tag=allowed] run function medabots_server:set_blocks/door/east
execute if entity @s[y_rotation=-45..45,tag=allowed] run function medabots_server:set_blocks/door/north
execute if entity @s[y_rotation=135..-135,tag=allowed] run function medabots_server:set_blocks/door/south
execute if entity @s[y_rotation=-135..-45,tag=allowed] run function medabots_server:set_blocks/door/west
execute as @e[distance=..0.7,tag=door] at @s run function medabots_server:blocks/door/open
tag @e[distance=..0.7,tag=door] add no_ticking