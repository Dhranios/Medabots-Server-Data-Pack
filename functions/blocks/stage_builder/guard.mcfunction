execute if entity @s[tag=slow] run function medabots_server:spawn_entities/guard/slow
execute if entity @s[tag=!slow,tag=!fast] run function medabots_server:spawn_entities/guard/medium
execute if entity @s[tag=fast] run function medabots_server:spawn_entities/guard/fast
