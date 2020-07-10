scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 9
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned 50 53 2 run function medabots_server:set_blocks/goal_area
execute positioned 38 53 66 run function medabots_server:set_blocks/starting_area
teleport @s 38 53 66 0 0