scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 28
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned 11 53 8 run function medabots_server:set_blocks/goal_area
execute positioned 10 53 41 run function medabots_server:set_blocks/starting_area
teleport @s 10 53 41 0 0