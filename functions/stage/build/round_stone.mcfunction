execute if entity @e[distance=..0.7,tag=floor_switch] run tag @s add allowed
execute unless block ~ ~ ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water unless block ~ ~1 ~ minecraft:air run tag @s remove allowed
execute if entity @s[scores={StageBuild=6},tag=allowed] run function medabots_server:spawn_entities/round_stone
execute if entity @s[scores={StageBuild=7},y_rotation=45..135,tag=allowed] run function medabots_server:spawn_entities/round_stone/east
execute if entity @s[scores={StageBuild=7},y_rotation=-45..45,tag=allowed] run function medabots_server:spawn_entities/round_stone/north
execute if entity @s[scores={StageBuild=7},y_rotation=135..-135,tag=allowed] run function medabots_server:spawn_entities/round_stone/south
execute if entity @s[scores={StageBuild=7},y_rotation=-135..-45,tag=allowed] run function medabots_server:spawn_entities/round_stone/west
tag @e[distance=..0.7,tag=round_stone] add no_ticking