scoreboard players set @s Battle 4
scoreboard players set @s Stage 31
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1655 45 -736 run function medabots_server:set_blocks/goal_area
execute positioned -1654 45 -756 run function medabots_server:set_blocks/starting_area
teleport @s -1654 45 -756 0 0