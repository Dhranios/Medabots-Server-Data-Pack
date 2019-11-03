execute positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/round_stone
execute positioned ~ ~-1.3999 ~ run scoreboard players operation @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=!action_floor] Moving = @s DelayTime
execute positioned ~ ~-1.3999 ~ run tag @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=!action_floor] add no_processing