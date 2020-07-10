scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 27
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1665 43 -704 -1604 43 -642 minecraft:barrier replace minecraft:air
execute positioned 9 53 7 run function medabots_server:set_blocks/goal_area
execute positioned 48 53 58 run function medabots_server:set_blocks/starting_area
teleport @s 48 53 58 0 0