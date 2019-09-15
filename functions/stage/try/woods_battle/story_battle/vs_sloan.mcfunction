function medabots_server:gamemodes/default/set_stats
teleport @s -1954 45 -616 -90 0
scoreboard players set @s StageVersion 3
tag @s add story_battle
execute positioned -1943 45 -617 run function medabots_server:spawn_entities/character_medabot/sloan
execute positioned -1943 45 -617 run scoreboard players set @e[distance=..1] Stage 47
execute positioned -1943 45 -617 run tag @e[distance=..1] add enemy_medabot
function medabots_server:stage/create/woods_battle/action_floors_2