tag @s add stage_builder
scoreboard players set @s Stage 35
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1845 44 -803 run function medabots_server:set_blocks/goal_area
execute positioned -1827 44 -738 run function medabots_server:set_blocks/starting_area
teleport @s -1827 44 -738 0 0