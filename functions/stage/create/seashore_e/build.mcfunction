tag @s add stage_builder
scoreboard players set @s Stage 55
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1962 45 -267 run function medabots_server:set_blocks/goal_area
execute positioned -1969 45 -318 run function medabots_server:set_blocks/starting_area
teleport @s -1969 45 -318 0 0