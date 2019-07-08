scoreboard players set @s Battle 4
scoreboard players set @s Stage 12
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
fill -1666 44 -477 -1573 44 -386 minecraft:barrier replace minecraft:air
execute positioned -1650 45 -466 run function medabots_server:set_blocks/goal_area
execute positioned -1658 45 -392 run function medabots_server:set_blocks/starting_area
teleport @s -1658 45 -392 0 0