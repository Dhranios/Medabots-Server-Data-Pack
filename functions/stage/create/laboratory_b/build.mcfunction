scoreboard players set @s Battle 4
scoreboard players set @s Stage 18
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1678 44 -626 run function medabots_server:set_blocks/goal_area
execute positioned -1754 44 -549 run function medabots_server:set_blocks/starting_area
teleport @s -1754 44 -549 0 0