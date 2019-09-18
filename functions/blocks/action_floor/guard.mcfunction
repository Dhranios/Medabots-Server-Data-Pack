execute if entity @s[tag=slow,tag=!20_medallar_cents,tag=!10_medallar_cents,tag=!6_medallar_cents,tag=!4_medallar_cents,tag=!2_medallar_cents,tag=!1_medallar_cent] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/slow
execute if entity @s[tag=slow,tag=1_medallar_cent] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/slow/1_medallar_cent
execute if entity @s[tag=slow,tag=2_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/slow/2_medallar_cents
execute if entity @s[tag=slow,tag=4_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/slow/4_medallar_cents
execute if entity @s[tag=slow,tag=6_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/slow/6_medallar_cents
execute if entity @s[tag=slow,tag=10_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/slow/10_medallar_cents
execute if entity @s[tag=slow,tag=20_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/slow/20_medallar_cents
execute if entity @s[tag=!slow,tag=!fast,tag=!20_medallar_cents,tag=!10_medallar_cents,tag=!6_medallar_cents,tag=!4_medallar_cents,tag=!2_medallar_cents,tag=!1_medallar_cent] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/medium
execute if entity @s[tag=!slow,tag=!fast,tag=1_medallar_cent] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/medium/1_medallar_cent
execute if entity @s[tag=!slow,tag=!fast,tag=2_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/medium/2_medallar_cents
execute if entity @s[tag=!slow,tag=!fast,tag=4_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/medium/4_medallar_cents
execute if entity @s[tag=!slow,tag=!fast,tag=6_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/medium/6_medallar_cents
execute if entity @s[tag=!slow,tag=!fast,tag=10_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/medium/10_medallar_cents
execute if entity @s[tag=!slow,tag=!fast,tag=20_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/medium/20_medallar_cents
execute if entity @s[tag=fast,tag=!20_medallar_cents,tag=!10_medallar_cents,tag=!6_medallar_cents,tag=!4_medallar_cents,tag=!2_medallar_cents,tag=!1_medallar_cent] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/fast
execute if entity @s[tag=fast,tag=1_medallar_cent] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/fast/1_medallar_cent
execute if entity @s[tag=fast,tag=2_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/fast/2_medallar_cents
execute if entity @s[tag=fast,tag=4_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/fast/4_medallar_cents
execute if entity @s[tag=fast,tag=6_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/fast/6_medallar_cents
execute if entity @s[tag=fast,tag=10_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/fast/10_medallar_cents
execute if entity @s[tag=fast,tag=20_medallar_cents] positioned ~ ~-1.3999 ~ run function medabots_server:spawn_entities/guard/fast/20_medallar_cents
execute positioned ~ ~-1.3999 ~ run tag @e[distance=..0.7,tag=!action_floor,tag=guard] add no_processing
execute positioned ~ ~-1.3999 ~ as @e[distance=..0.7,tag=guard] run data merge entity @s {Invulnerable:1b}