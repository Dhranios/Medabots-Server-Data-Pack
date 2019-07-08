scoreboard players set @s Battle 4
scoreboard players set @s Stage 26
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1541 44 -676 run function medabots_server:set_blocks/goal_area
execute positioned -1541 44 -616 run function medabots_server:set_blocks/starting_area
teleport @s -1541 44 -616 0 0