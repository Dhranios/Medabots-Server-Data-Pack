function medabots_server:spawn_entities/cannon/swivel
execute as @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] at @s run teleport @s ~ ~ ~ 0 0
tag @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] add south