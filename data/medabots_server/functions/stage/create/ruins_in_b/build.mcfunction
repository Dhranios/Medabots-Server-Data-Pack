scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 17
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1667 43 -573 -1574 43 -480 minecraft:barrier replace minecraft:air
execute positioned -1621 44 -565 run function medabots_server:set_blocks/goal_area
execute positioned -1620 44 -486 run function medabots_server:set_blocks/starting_area
teleport @s -1620 44 -486 0 0