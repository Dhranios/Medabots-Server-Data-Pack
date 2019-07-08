teleport @s -1998 45 -612 -180 0
tag @s add balloon_bombs
tag @s add story_battle
execute positioned -1999 45 -605 run function medabots_server:spawn_entities/character_enemy_medabot/spyke
execute positioned -1999 45 -605 run scoreboard players set @e[distance=..1] Stage 48
function medabots_server:stage/create/icefield_battle/balloon_bombs