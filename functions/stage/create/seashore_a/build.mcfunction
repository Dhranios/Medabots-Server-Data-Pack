scoreboard players set @s Battle 4
scoreboard players set @s Stage 4
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1538 45 -229 run function medabots_server:set_blocks/goal_area
execute positioned -1512 45 -189 run function medabots_server:set_blocks/starting_area
teleport @s -1512 45 -189 0 0