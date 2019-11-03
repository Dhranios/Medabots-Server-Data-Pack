execute positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/bomb/delay_5
execute positioned ~ ~-1.3999 ~ run scoreboard players operation @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=!action_floor] DelayTime = @s DelayTime
execute positioned ~ ~-1.3999 ~ run tag @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=!action_floor] add no_processing