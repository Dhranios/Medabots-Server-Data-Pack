function medabots_server:set_blocks/mirror
execute as @e[distance=..0.7,tag=mirror] at @s run teleport @s ~ ~ ~ -45 0
tag @e[distance=..0.7,tag=mirror] add -45