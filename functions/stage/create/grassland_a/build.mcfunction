scoreboard players set @s Battle 4
scoreboard players set @s Stage 1
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1551 45 -171 run function medabots_server:set_blocks/goal_area
execute positioned -1516 45 -123 run function medabots_server:set_blocks/starting_area
teleport @s -1516 45 -123 0 0