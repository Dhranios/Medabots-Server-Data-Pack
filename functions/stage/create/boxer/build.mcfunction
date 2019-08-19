scoreboard players set @s Battle 4
scoreboard players set @s Stage 29
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1889 44 -595 run function medabots_server:set_blocks/goal_area
execute positioned -1890 44 -548 run function medabots_server:set_blocks/starting_area
teleport @s -1890 44 -548 0 0