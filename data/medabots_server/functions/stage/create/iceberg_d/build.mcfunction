scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 33
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1679 44 -785 run function medabots_server:set_blocks/goal_area
execute positioned -1725 44 -755 run function medabots_server:set_blocks/starting_area
teleport @s -1725 44 -755 0 0