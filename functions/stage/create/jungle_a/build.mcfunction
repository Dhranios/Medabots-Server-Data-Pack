scoreboard players set @s Battle 4
scoreboard players set @s Stage 3
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1694 45 -167 run function medabots_server:set_blocks/goal_area
execute positioned -1698 45 -122 run function medabots_server:set_blocks/starting_area
teleport @s -1698 45 -122 0 0