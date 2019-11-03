function medabots_server:spawn_entities/cannon/search
execute as @e[distance=..0.7,tag=cannon] at @s run teleport @s ~ ~ ~ 90 0
tag @e[distance=..0.7,tag=cannon] add west