execute unless block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if entity @s[tag=allowed] run function medabots_server:set_blocks/whirlpool
tag @e[distance=..0.7,tag=whirlpool] add no_ticking