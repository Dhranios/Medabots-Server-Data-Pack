tag @s add stage_builder
scoreboard players set @s Stage 21
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1761 44 -730 -1668 44 -637 minecraft:barrier replace minecraft:air
execute positioned -1715 45 -681 run function medabots_server:set_blocks/goal_area
execute positioned -1715 45 -709 run function medabots_server:set_blocks/starting_area
teleport @s -1715 45 -709 0 0