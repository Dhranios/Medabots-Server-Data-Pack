function medabots_server:gamemodes/default/set_stats
teleport @s -1933 45 -551 90 0
scoreboard players set @s StageVersion 4
tag @s add story_battle
execute positioned -1938 45 -552 run function medabots_server:spawn_entities/medabot/pretty_prime/pretty_prime/pretty_prime/pretty_prime/monkey
execute positioned -1938 45 -552 run scoreboard players set @e[distance=..1] Stage 50
execute positioned -1938 45 -552 run tag @e[distance=..1] add enemy_medabot
execute positioned -1938 45 -552 as @e[distance=..1] run data merge entity @s {CustomName:'{"translate":"medabots_server:entity.jaxy"}'}
function medabots_server:stage/create/park_battle/wind_1