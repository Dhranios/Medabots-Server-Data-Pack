scoreboard players set @s Battle 4
scoreboard players set @s Stage 28
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1585 44 -610 run function medabots_server:set_blocks/goal_area
execute positioned -1586 44 -577 run function medabots_server:set_blocks/starting_area
teleport @s -1586 44 -577 0 0