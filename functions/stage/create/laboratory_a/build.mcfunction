scoreboard players set @s Battle 4
scoreboard players set @s Stage 9
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1761 44 -319 run function medabots_server:set_blocks/goal_area
execute positioned -1773 44 -255 run function medabots_server:set_blocks/starting_area
teleport @s -1773 44 -255 0 0