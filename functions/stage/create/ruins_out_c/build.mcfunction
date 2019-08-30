tag @s add stage_builder
scoreboard players set @s Stage 27
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1665 43 -704 -1604 43 -642 minecraft:barrier replace minecraft:air
execute positioned -1656 44 -697 run function medabots_server:set_blocks/goal_area
execute positioned -1617 44 -646 run function medabots_server:set_blocks/starting_area
teleport @s -1617 44 -646 0 0