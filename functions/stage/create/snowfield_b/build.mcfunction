scoreboard players set @s Battle 4
scoreboard players set @s Stage 14
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1749 45 -528 run function medabots_server:set_blocks/goal_area
execute positioned -1706 45 -464 run function medabots_server:set_blocks/starting_area
teleport @s -1706 45 -464 0 0