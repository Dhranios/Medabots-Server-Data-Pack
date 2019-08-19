scoreboard players set @s Battle 4
scoreboard players set @s Stage 59
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1934 44 -522 run function medabots_server:set_blocks/goal_area
execute positioned -2014 44 -445 run function medabots_server:set_blocks/starting_area
teleport @s -2014 44 -445 0 0