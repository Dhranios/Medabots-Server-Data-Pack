tag @s add stage_builder
scoreboard players set @s Stage 53
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1893 45 -334 run function medabots_server:set_blocks/goal_area
execute positioned -1820 45 -265 run function medabots_server:set_blocks/starting_area
teleport @s -1820 45 -265 0 0