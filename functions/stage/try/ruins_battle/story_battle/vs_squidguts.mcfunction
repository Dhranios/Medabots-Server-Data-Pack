teleport @s -1997 45 -564 0 0
tag @s add walls
tag @s add story_battle
execute positioned -1996 45 -557 run function medabots_server:spawn_entities/character_enemy_medabot/squidguts
execute positioned -1996 45 -557 run scoreboard players set @e[distance=..1] Stage 49
execute positioned -1996 45 -557 run scoreboard players set @e[distance=..1] MusicType 27
execute positioned -1996 45 -557 run tag @e[distance=..1] add overwrite_robattle_music
function medabots_server:stage/create/ruins_battle/walls