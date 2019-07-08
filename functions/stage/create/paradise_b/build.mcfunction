scoreboard players set @s Battle 4
scoreboard players set @s Stage 22
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1659 45 -614 run function medabots_server:set_blocks/goal_area
execute positioned -1611 45 -581 run function medabots_server:set_blocks/starting_area
teleport @s -1611 45 -581 0 0