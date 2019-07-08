execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if entity @s[tag=allowed] run function medabots_server:set_blocks/stone
tag @e[distance=..0.7,tag=stone] add no_ticking