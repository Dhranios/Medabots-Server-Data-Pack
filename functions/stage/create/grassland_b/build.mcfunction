scoreboard players set @s Battle 4
scoreboard players set @s Stage 10
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1558 45 -397 run function medabots_server:set_blocks/goal_area
execute positioned -1538 45 -326 run function medabots_server:set_blocks/starting_area
teleport @s -1538 45 -326 0 0