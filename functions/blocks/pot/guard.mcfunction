execute if entity @s[tag=!20_medallar_cents,tag=!10_medallar_cents,tag=!6_medallar_cents,tag=!4_medallar_cents,tag=!2_medallar_cents,tag=!1_medallar_cent] run function medabots_server:spawn_entities/guard/medium
execute if entity @s[tag=1_medallar_cent] run function medabots_server:spawn_entities/guard/medium/1_medallar_cent
execute if entity @s[tag=2_medallar_cents] run function medabots_server:spawn_entities/guard/medium/2_medallar_cents
execute if entity @s[tag=4_medallar_cents] run function medabots_server:spawn_entities/guard/medium/4_medallar_cents
execute if entity @s[tag=6_medallar_cents] run function medabots_server:spawn_entities/guard/medium/6_medallar_cents
execute if entity @s[tag=10_medallar_cents] run function medabots_server:spawn_entities/guard/medium/10_medallar_cents
execute if entity @s[tag=20_medallar_cents] run function medabots_server:spawn_entities/guard/medium/20_medallar_cents
scoreboard players operation @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=!pot] Speed = @s DelayTime