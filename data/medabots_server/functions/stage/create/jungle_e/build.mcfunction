scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 54
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1955 44 -247 -1861 44 -152 minecraft:barrier replace minecraft:air
execute positioned 77 53 11 run function medabots_server:set_blocks/goal_area
execute positioned 11 53 11 run function medabots_server:set_blocks/starting_area
teleport @s 11 53 11 0 0