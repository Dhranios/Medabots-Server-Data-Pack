tag @s add stage_builder
scoreboard players set @s Stage 2
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1602 45 -170 run function medabots_server:set_blocks/goal_area
execute positioned -1626 45 -127 run function medabots_server:set_blocks/starting_area
teleport @s -1626 45 -127 0 0