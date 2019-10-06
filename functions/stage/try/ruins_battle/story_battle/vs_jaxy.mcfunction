function medabots_server:gamemodes/default/set_stats
teleport @s -1997 45 -564 0 0
scoreboard players set @s StageVersion 4
tag @s add story_battle
tag @s add main
execute positioned -1996 45 -557 run function medabots_server:spawn_entities/character_medabot/jaxy
execute positioned -1996 45 -557 run scoreboard players set @e[distance=..1] Stage 49
execute positioned -1996 45 -557 run tag @e[distance=..1] add enemy_medabot
function medabots_server:stage/create/ruins_battle/accelerators