function medabots_server:spawn_entities/cannon/still
execute as @e[distance=..0.7,tag=cannon] at @s run teleport @s ~ ~ ~ -180 0
tag @e[distance=..0.7,tag=cannon] add north