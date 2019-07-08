scoreboard players set @s Battle 4
scoreboard players set @s Stage 32
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1552 45 -800 run function medabots_server:set_blocks/goal_area
execute positioned -1594 45 -790 run function medabots_server:set_blocks/starting_area
teleport @s -1594 45 -790 0 0