function medabots_server:gamemodes/default/set_stats
teleport @s -1998 45 -612 -180 0
scoreboard players set @s StageVersion 1
tag @s add story_battle
execute positioned -1999 45 -605 run function medabots_server:spawn_entities/character_medabot/spyke
execute positioned -1999 45 -605 run scoreboard players set @e[distance=..1] Stage 48
execute positioned -1999 45 -605 run tag @e[distance=..1] add enemy_medabot
function medabots_server:stage/create/icefield_battle/balloon_bombs