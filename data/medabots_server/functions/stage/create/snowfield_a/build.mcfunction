scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 5
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned 8 53 14 run function medabots_server:set_blocks/goal_area
execute positioned 74 53 4 run function medabots_server:set_blocks/starting_area
teleport @s 74 53 4 0 0