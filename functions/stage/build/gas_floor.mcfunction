execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if entity @s[tag=allowed,scores={StageBuild=87}] run function medabots_server:set_blocks/gas_floor/disabled/confuse
execute if entity @s[tag=allowed,scores={StageBuild=88}] run function medabots_server:set_blocks/gas_floor/disabled/ineffective
execute if entity @s[tag=allowed,scores={StageBuild=89}] run function medabots_server:set_blocks/gas_floor/disabled/no_defend
execute if entity @s[tag=allowed,scores={StageBuild=90}] run function medabots_server:set_blocks/gas_floor/disabled/falling
tag @e[distance=..0.7,tag=stone] add no_ticking