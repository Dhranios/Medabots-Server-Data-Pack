execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if entity @s[scores={StageBuild=11},tag=allowed] run function medabots_server:set_blocks/hole/delay_5
execute if entity @s[scores={StageBuild=12},tag=allowed] run function medabots_server:set_blocks/hole/delay_10
tag @e[distance=..0.7,tag=hole] add no_ticking