scoreboard players set @s Battle 4
scoreboard players set @s Stage 13
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1748 45 -431 run function medabots_server:set_blocks/goal_area
execute positioned -1716 45 -356 run function medabots_server:set_blocks/starting_area
teleport @s -1716 45 -356 0 0