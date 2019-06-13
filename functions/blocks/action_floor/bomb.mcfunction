execute if entity @s[tag=delay_0] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/bomb/delay_0
execute if entity @s[tag=delay_5] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/bomb/delay_5
execute if entity @s[tag=delay_10] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/bomb/delay_10
execute if entity @s[tag=delay_20] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/bomb/delay_20
execute if entity @s[tag=delay_30] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/bomb/delay_30
execute if entity @s[tag=delay_60] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/bomb/delay_60
execute if entity @s[tag=delay_90] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/bomb/delay_90
execute if entity @s[tag=delay_120] positioned ~ ~-1.77 ~ run function medabots_server:spawn_entities/bomb/delay_120
execute positioned ~ ~-1.77 ~ run tag @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=!action_floor] add no_processing