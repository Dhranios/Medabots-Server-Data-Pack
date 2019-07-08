execute if entity @s[scores={StageBuild=13},y_rotation=45..135] unless block ~1 ~ ~ minecraft:air run tag @s remove allowed
execute if entity @s[scores={StageBuild=13},y_rotation=-45..45] unless block ~ ~ ~-1 minecraft:air run tag @s remove allowed
execute if entity @s[scores={StageBuild=13},y_rotation=135..-135] unless block ~ ~ ~1 minecraft:air run tag @s remove allowed
execute if entity @s[scores={StageBuild=13},y_rotation=-135..-45] unless block ~-1 ~ ~ minecraft:air run tag @s remove allowed
execute if entity @s[scores={StageBuild=13},y_rotation=45..135,tag=allowed] run function medabots_server:set_blocks/drawbridge/east
execute if entity @s[scores={StageBuild=13},y_rotation=-45..45,tag=allowed] run function medabots_server:set_blocks/drawbridge/north
execute if entity @s[scores={StageBuild=13},y_rotation=135..-135,tag=allowed] run function medabots_server:set_blocks/drawbridge/south
execute if entity @s[scores={StageBuild=13},y_rotation=-135..-45,tag=allowed] run function medabots_server:set_blocks/drawbridge/west
tag @e[distance=..0.7,tag=drawbridge] add no_ticking