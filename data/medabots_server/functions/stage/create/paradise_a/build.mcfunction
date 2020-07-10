scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 21
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1761 44 -730 -1668 44 -637 minecraft:barrier replace minecraft:air
execute positioned 46 53 49 run function medabots_server:set_blocks/goal_area
execute positioned 46 53 21 run function medabots_server:set_blocks/starting_area
teleport @s 46 53 21 0 0