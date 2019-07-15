teleport @s -1966 45 -578 -90 0
tag @s add cannons_1
tag @s add story_battle
execute positioned -1957 45 -577 run function medabots_server:spawn_entities/character_enemy_medabot/samantha
execute positioned -1957 45 -577 run scoreboard players set @e[distance=..1] Stage 50
function medabots_server:stage/create/park_battle/cannons_1