scoreboard players set @s Battle 4
scoreboard players set @s Stage 30
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1587 45 -742 run function medabots_server:set_blocks/goal_area
execute positioned -1574 45 -693 run function medabots_server:set_blocks/starting_area
teleport @s -1574 45 -693 0 0