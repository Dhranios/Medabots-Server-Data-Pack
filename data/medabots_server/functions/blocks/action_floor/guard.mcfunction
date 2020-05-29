execute if entity @s[tag=!20_medallar_cents,tag=!10_medallar_cents,tag=!6_medallar_cents,tag=!4_medallar_cents,tag=!2_medallar_cents,tag=!1_medallar_cent] positioned ~ ~-2.7999 ~ run function medabots_server:spawn_entities/guard/medium
execute if entity @s[tag=1_medallar_cent] positioned ~ ~-2.7999 ~ run function medabots_server:spawn_entities/guard/medium/1_medallar_cent
execute if entity @s[tag=2_medallar_cents] positioned ~ ~-2.7999 ~ run function medabots_server:spawn_entities/guard/medium/2_medallar_cents
execute if entity @s[tag=4_medallar_cents] positioned ~ ~-2.7999 ~ run function medabots_server:spawn_entities/guard/medium/4_medallar_cents
execute if entity @s[tag=6_medallar_cents] positioned ~ ~-2.7999 ~ run function medabots_server:spawn_entities/guard/medium/6_medallar_cents
execute if entity @s[tag=10_medallar_cents] positioned ~ ~-2.7999 ~ run function medabots_server:spawn_entities/guard/medium/10_medallar_cents
execute if entity @s[tag=20_medallar_cents] positioned ~ ~-2.7999 ~ run function medabots_server:spawn_entities/guard/medium/20_medallar_cents
execute positioned ~ ~-2.7999 ~ run scoreboard players operation @e[distance=..0.7,type=minecraft:creeper,tag=guard,tag=!action_floor] Speed = @s DelayTime
execute positioned ~ ~-2.7999 ~ run tag @e[distance=..0.7,tag=!action_floor,tag=guard] add no_processing
execute positioned ~ ~-2.7999 ~ as @e[distance=..0.7,tag=guard] run data merge entity @s {Invulnerable:1b}