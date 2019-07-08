scoreboard players set @s Battle 4
scoreboard players set @s Stage 11
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1605 45 -373 run function medabots_server:set_blocks/goal_area
execute positioned -1605 45 -323 run function medabots_server:set_blocks/starting_area
teleport @s -1605 45 -323 0 0