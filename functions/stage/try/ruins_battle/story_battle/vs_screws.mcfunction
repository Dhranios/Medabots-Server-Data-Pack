function medabots_server:gamemodes/default/set_stats
teleport @s -1997 45 -564 0 0
scoreboard players set @s StageVersion 3
tag @s add story_battle
tag @s add main
execute positioned -1996 45 -557 run function medabots_server:spawn_entities/character_medabot/samantha
execute positioned -1996 45 -557 run scoreboard players set @e[distance=..1] Stage 49
execute positioned -1996 45 -557 run tag @e[distance=..1] add enemy_medabot
execute positioned -1994 45 -556 run function medabots_server:spawn_entities/character_medabot/sloan
execute positioned -1994 45 -556 run scoreboard players set @e[distance=..1] Stage 49
execute positioned -1994 45 -556 run tag @e[distance=..1] add enemy_medabot
execute positioned -1998 45 -555 run function medabots_server:spawn_entities/character_medabot/spyke
execute positioned -1998 45 -555 run scoreboard players set @e[distance=..1] Stage 49
execute positioned -1998 45 -555 run tag @e[distance=..1] add enemy_medabot
function medabots_server:stage/create/ruins_battle/cannons