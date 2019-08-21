tag @s add stage_builder
scoreboard players set @s Stage 54
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1955 44 -247 -1861 44 -152 minecraft:barrier replace minecraft:air
execute positioned -1878 45 -236 run function medabots_server:set_blocks/goal_area
execute positioned -1944 45 -236 run function medabots_server:set_blocks/starting_area
teleport @s -1944 45 -236 0 0