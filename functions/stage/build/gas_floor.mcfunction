execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed
execute if entity @s[tag=allowed,scores={StageBuild=87}] run function medabots_server:set_blocks/gas_floor/confuse/power_1
execute if entity @s[tag=allowed,scores={StageBuild=88}] run function medabots_server:set_blocks/gas_floor/ineffective/power_1
execute if entity @s[tag=allowed,scores={StageBuild=89}] run function medabots_server:set_blocks/gas_floor/no_defend/power_1
execute if entity @s[tag=allowed,scores={StageBuild=90}] run function medabots_server:set_blocks/gas_floor/falling/power_1
tag @e[distance=..0.7,tag=gas_floor] add no_ticking