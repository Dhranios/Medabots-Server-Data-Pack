scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 2
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned 34 53 10 run function medabots_server:set_blocks/goal_area
execute positioned 10 53 53 run function medabots_server:set_blocks/starting_area
teleport @s 10 53 53 0 0