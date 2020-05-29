execute positioned ~ ~-2.7999 ~ run function medabots_server:spawn_entities/bomb/delay_5
execute positioned ~ ~-2.7999 ~ run scoreboard players operation @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=!action_floor,tag=bomb] DelayTime = @s DelayTime
execute positioned ~ ~-2.7999 ~ run tag @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=!action_floor,tag=bomb] add no_processing