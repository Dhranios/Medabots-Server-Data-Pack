teleport @s -1954 45 -616 -90 0
tag @s add stones
tag @s add story_battle
execute positioned -1943 45 -617 run function medabots_server:spawn_entities/character_enemy_medabot/erika
execute positioned -1943 45 -617 run scoreboard players set @e[distance=..1] Stage 47
execute positioned -1943 45 -617 run data merge entity @e[distance=..1,tag=sailor_multi,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
function medabots_server:stage/create/woods_battle/stones