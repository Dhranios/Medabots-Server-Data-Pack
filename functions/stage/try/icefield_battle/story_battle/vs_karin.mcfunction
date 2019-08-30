teleport @s -1999 45 -593 -180 0
scoreboard players set @s StageVersion 4
tag @s add story_battle
execute positioned -1998 45 -624 run function medabots_server:spawn_entities/character_medabot/karin
execute positioned -1998 45 -624 run scoreboard players set @e[distance=..1] Stage 48
execute positioned -1998 45 -624 run tag @e[distance=..1] add enemy_medabot
function medabots_server:stage/create/icefield_battle/locked_out