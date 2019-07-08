scoreboard players set @s Battle 4
scoreboard players set @s Stage 57
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1954 44 -383 run function medabots_server:set_blocks/goal_area
execute positioned -1914 44 -375 run function medabots_server:set_blocks/starting_area
teleport @s -1914 44 -375 0 0