tag @s add stage_builder
scoreboard players set @s Stage 52
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1858 44 -247 -1765 44 -153 minecraft:barrier replace minecraft:air
execute positioned -1833 45 -229 run function medabots_server:set_blocks/goal_area
execute positioned -1840 45 -198 run function medabots_server:set_blocks/starting_area
teleport @s -1840 45 -198 0 0