scoreboard players set @s Battle 4
scoreboard players set @s Stage 53
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1893 45 -334 run function medabots_server:set_blocks/goal_area
execute positioned -1820 45 -265 run function medabots_server:set_blocks/starting_area
teleport @s -1820 45 -265 0 0