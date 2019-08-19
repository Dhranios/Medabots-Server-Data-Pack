scoreboard players set @s Battle 4
scoreboard players set @s Stage 56
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1852 45 -414 run function medabots_server:set_blocks/goal_area
execute positioned -1846 45 -366 run function medabots_server:set_blocks/starting_area
teleport @s -1846 45 -366 0 0