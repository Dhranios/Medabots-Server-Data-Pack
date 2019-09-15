function medabots_server:gamemodes/default/set_stats
teleport @s -1954 45 -616 -90 0
scoreboard players set @s StageVersion 4
tag @s add story_battle
execute positioned -1943 45 -617 run function medabots_server:spawn_entities/character_medabot/gillgirl
execute positioned -1943 45 -617 run scoreboard players set @e[distance=..1] Stage 47
execute positioned -1943 45 -617 run tag @e[distance=..1] add enemy_medabot
execute positioned -1943 45 -617 run scoreboard players set @e[distance=..1] MusicType 27
execute positioned -1943 45 -617 run tag @e[distance=..1] add overwrite_robattle_music
function medabots_server:stage/create/woods_battle/balloon_bombs