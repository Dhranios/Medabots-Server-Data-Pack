tag @s add stage_builder
scoreboard players set @s Stage 12
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1666 44 -477 -1573 44 -386 minecraft:barrier replace minecraft:air
execute positioned -1650 45 -466 run function medabots_server:set_blocks/goal_area
execute positioned -1658 45 -392 run function medabots_server:set_blocks/starting_area
teleport @s -1658 45 -392 0 0