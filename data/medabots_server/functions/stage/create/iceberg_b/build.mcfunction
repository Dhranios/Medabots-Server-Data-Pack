tag @s add stage_builder
scoreboard players set @s Stage 15
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1778 44 -429 run function medabots_server:set_blocks/goal_area
execute positioned -1817 44 -352 run function medabots_server:set_blocks/starting_area
teleport @s -1817 44 -352 0 0