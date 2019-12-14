scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 18
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1678 44 -626 run function medabots_server:set_blocks/goal_area
execute positioned -1754 44 -549 run function medabots_server:set_blocks/starting_area
teleport @s -1754 44 -549 0 0