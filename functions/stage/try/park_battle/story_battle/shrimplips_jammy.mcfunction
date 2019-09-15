function medabots_server:gamemodes/default/set_stats
teleport @s -1967 45 -552 -90 0
scoreboard players set @s StageVersion 3
tag @s add story_battle
execute positioned -1956 45 -551 run function medabots_server:spawn_entities/character_medabot/shrimplips
execute positioned -1956 45 -551 run scoreboard players set @e[distance=..1] Stage 50
execute positioned -1956 45 -551 run tag @e[distance=..1] add enemy_medabot
execute positioned -1956 45 -551 run scoreboard players set @e[distance=..1] MusicType 27
execute positioned -1956 45 -551 run tag @e[distance=..1] add overwrite_robattle_music
function medabots_server:stage/create/park_battle/accelerators