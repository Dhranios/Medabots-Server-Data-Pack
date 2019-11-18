tag @s add stage_builder
scoreboard players set @s Stage 24
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1558 44 -538 run function medabots_server:set_blocks/goal_area
execute positioned -1557 44 -488 run function medabots_server:set_blocks/starting_area
teleport @s -1557 44 -488 0 0