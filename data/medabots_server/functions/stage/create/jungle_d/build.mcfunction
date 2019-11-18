tag @s add stage_builder
scoreboard players set @s Stage 31
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1655 45 -737 run function medabots_server:set_blocks/goal_area
execute positioned -1654 45 -757 run function medabots_server:set_blocks/starting_area
teleport @s -1654 45 -757 0 0