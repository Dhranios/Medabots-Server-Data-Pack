scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 16
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1858 44 -536 -1765 44 -442 minecraft:barrier replace minecraft:air
execute positioned 71 53 9 run function medabots_server:set_blocks/goal_area
execute positioned 47 53 82 run function medabots_server:set_blocks/starting_area
teleport @s 47 53 82 0 0