scoreboard players set @s Battle 4
scoreboard players set @s Stage 19
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1854 44 -633 -1764 44 -540 minecraft:barrier replace minecraft:air
execute positioned -1807 45 -593 run function medabots_server:set_blocks/goal_area
execute positioned -1807 45 -555 run function medabots_server:set_blocks/starting_area
teleport @s -1807 45 -555 0 0