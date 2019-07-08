scoreboard players set @s Battle 4
scoreboard players set @s Stage 34
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1762 44 -789 run function medabots_server:set_blocks/goal_area
execute positioned -1763 44 -749 run function medabots_server:set_blocks/starting_area
teleport @s -1763 44 -749 0 0