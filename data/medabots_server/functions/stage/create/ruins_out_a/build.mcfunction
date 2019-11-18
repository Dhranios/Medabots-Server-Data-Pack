tag @s add stage_builder
scoreboard players set @s Stage 7
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1567 45 -312 run function medabots_server:set_blocks/goal_area
execute positioned -1568 45 -256 run function medabots_server:set_blocks/starting_area
teleport @s -1568 45 -256 0 0