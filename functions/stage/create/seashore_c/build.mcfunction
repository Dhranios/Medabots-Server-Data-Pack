scoreboard players set @s Battle 4
scoreboard players set @s Stage 25
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1523 44 -601 run function medabots_server:set_blocks/goal_area
execute positioned -1541 44 -570 run function medabots_server:set_blocks/starting_area
teleport @s -1541 44 -570 0 0