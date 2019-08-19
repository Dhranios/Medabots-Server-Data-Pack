scoreboard players set @s Battle 4
scoreboard players set @s Stage 60
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1911 45 -663 run function medabots_server:set_blocks/goal_area
execute positioned -1887 45 -655 run function medabots_server:set_blocks/starting_area
teleport @s -1887 45 -655 0 0