scoreboard players set @s Battle 4
scoreboard players set @s Stage 23
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1537 44 -471 run function medabots_server:set_blocks/goal_area
execute positioned -1535 44 -423 run function medabots_server:set_blocks/starting_area
teleport @s -1535 44 -423 0 0