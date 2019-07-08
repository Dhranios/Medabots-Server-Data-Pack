execute if entity @s[tag=!east,tag=!north,tag=!south,tag=!west] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/round_stone
execute if entity @s[tag=east] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/round_stone/east
execute if entity @s[tag=north] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/round_stone/north
execute if entity @s[tag=south] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/round_stone/south
execute if entity @s[tag=west] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/round_stone/west
execute positioned ~ ~-1.3999 ~ run tag @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=!action_floor] add no_processing