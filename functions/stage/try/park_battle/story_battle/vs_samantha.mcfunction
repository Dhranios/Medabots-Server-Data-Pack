teleport @s -1966 45 -578 -90 0
tag @s add cannons_1
tag @s add story_battle
execute positioned -1957 45 -577 run function medabots_server:spawn_entities/character_medabot/samantha
execute positioned -1957 45 -577 run scoreboard players set @e[distance=..1] Stage 50
execute positioned -1957 45 -577 run tag @e[distance=..1] add enemy_medabot
function medabots_server:stage/create/park_battle/cannons_1