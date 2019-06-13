execute if entity @s[tag=!east,tag=!north,tag=!south,tag=!west] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/ice_block
execute if entity @s[tag=east] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/ice_block/east
execute if entity @s[tag=north] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/ice_block/north
execute if entity @s[tag=south] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/ice_block/south
execute if entity @s[tag=west] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/ice_block/west
execute positioned ~ ~-1.77 ~ run tag @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=!action_floor] add no_processing