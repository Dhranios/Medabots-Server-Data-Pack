function medabots_server:spawn_entities/rubberobo
execute as @e[distance=..0.7,tag=rubberobo] at @s run teleport @s ~ ~ ~ 90 0
scoreboard players set @e[distance=..0.7,tag=rubberobo] HomeRot 90