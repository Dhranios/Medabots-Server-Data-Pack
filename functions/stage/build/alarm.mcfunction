execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if entity @s[tag=allowed] run function medabots_server:set_blocks/alarm
tag @e[distance=..0.7,tag=alarm] add no_ticking