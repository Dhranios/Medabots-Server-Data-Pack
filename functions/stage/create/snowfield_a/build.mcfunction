tag @s add stage_builder
scoreboard players set @s Stage 5
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1660 45 -233 run function medabots_server:set_blocks/goal_area
execute positioned -1594 45 -243 run function medabots_server:set_blocks/starting_area
teleport @s -1594 45 -243 0 0