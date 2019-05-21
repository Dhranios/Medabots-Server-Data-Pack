teleport @s -1997 45 -564
tag @s add walls
tag @s add story_battle
execute positioned -1996 45 -557 run function medabots_server:spawn_entities/character_enemy_medabot/squidguts
execute positioned -1996 45 -557 run scoreboard players set @e[distance=..1] Stage 49
function medabots_server:stage/create/ruins_battle/walls