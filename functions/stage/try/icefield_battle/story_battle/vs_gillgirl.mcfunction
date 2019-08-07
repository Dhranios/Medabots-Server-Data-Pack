teleport @s -1999 45 -605 -180 0
tag @s add mirrors
tag @s add story_battle
execute positioned -1998 45 -612 run function medabots_server:spawn_entities/character_medabot/gillgirl
execute positioned -1998 45 -612 run scoreboard players set @e[distance=..1] Stage 48
execute positioned -1998 45 -612 run tag @e[distance=..1] add enemy_medabot
execute positioned -1998 45 -612 run scoreboard players set @e[distance=..1] MusicType 27
execute positioned -1998 45 -612 run tag @e[distance=..1] add overwrite_robattle_music
function medabots_server:stage/create/icefield_battle/mirrors