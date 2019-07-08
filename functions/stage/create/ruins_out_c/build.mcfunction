scoreboard players set @s Battle 4
scoreboard players set @s Stage 27
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
fill -1665 43 -703 -1604 43 -641 minecraft:barrier replace minecraft:air
execute positioned -1656 44 -696 run function medabots_server:set_blocks/goal_area
execute positioned -1617 44 -645 run function medabots_server:set_blocks/starting_area
teleport @s -1617 44 -645 0 0