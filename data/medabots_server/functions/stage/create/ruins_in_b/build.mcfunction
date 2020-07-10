scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 17
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1667 43 -573 -1574 43 -480 minecraft:barrier replace minecraft:air
execute positioned 45 53 7 run function medabots_server:set_blocks/goal_area
execute positioned 46 53 86 run function medabots_server:set_blocks/starting_area
teleport @s 46 53 86 0 0