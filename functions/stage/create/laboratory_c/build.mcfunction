tag @s add stage_builder
scoreboard players set @s Stage 28
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1585 44 -612 run function medabots_server:set_blocks/goal_area
execute positioned -1586 44 -579 run function medabots_server:set_blocks/starting_area
teleport @s -1586 44 -579 0 0