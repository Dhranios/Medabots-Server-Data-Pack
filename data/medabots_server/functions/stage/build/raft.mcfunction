execute unless block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if entity @s[tag=allowed] run function medabots_server:spawn_entities/raft
tag @e[distance=..0.7,tag=raft] add no_ticking