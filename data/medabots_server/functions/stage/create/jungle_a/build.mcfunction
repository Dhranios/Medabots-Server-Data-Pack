scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 3
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned 11 53 12 run function medabots_server:set_blocks/goal_area
execute positioned 7 53 57 run function medabots_server:set_blocks/starting_area
teleport @s 7 53 57 0 0