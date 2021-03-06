execute if entity @e[distance=..0.7,tag=floor_switch] run tag @s add allowed
execute unless block ~ ~ ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water positioned ~ ~-0.6 ~ unless entity @e[distance=..0.7,tag=raft] run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed
execute if entity @s[scores={StageBuild=43},tag=allowed] run function medabots_server:spawn_entities/ice_block
execute if entity @s[scores={StageBuild=44},y_rotation=45..135,tag=allowed] run function medabots_server:spawn_entities/ice_block/east
execute if entity @s[scores={StageBuild=44},y_rotation=-45..45,tag=allowed] run function medabots_server:spawn_entities/ice_block/north
execute if entity @s[scores={StageBuild=44},y_rotation=135..-135,tag=allowed] run function medabots_server:spawn_entities/ice_block/south
execute if entity @s[scores={StageBuild=44},y_rotation=-135..-45,tag=allowed] run function medabots_server:spawn_entities/ice_block/west
tag @e[distance=..0.7,tag=ice_block] add no_ticking