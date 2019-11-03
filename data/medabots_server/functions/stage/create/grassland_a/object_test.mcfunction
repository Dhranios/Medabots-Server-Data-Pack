execute positioned -1535 45 -176 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1539 45 -176 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1520 45 -175 run function medabots_server:spawn_entities/item/1_medallar_cent
execute positioned -1539 45 -172 run function medabots_server:spawn_entities/round_stone
execute positioned -1543 45 -171 run function medabots_server:spawn_entities/ice_block
execute positioned -1539 45 -169 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1520 45 -155 run function medabots_server:spawn_entities/raft
execute positioned -1529 45 -154 run function medabots_server:spawn_entities/raft
execute positioned -1539 45 -154 run function medabots_server:spawn_entities/raft
execute positioned -1514 45 -159 run function medabots_server:set_blocks/laser_trap/west/delay_10/power_0
execute positioned -1532 45 -159 run function medabots_server:set_blocks/mirror/45
execute positioned -1534 45 -170 run function medabots_server:spawn_entities/bomb/delay_5
execute positioned -1533 45 -170 run function medabots_server:spawn_entities/bomb/delay_5
execute positioned -1524 45 -177 run function medabots_server:spawn_entities/rubberobo/south
execute positioned -1513 45 -170 run function medabots_server:spawn_entities/rubberobo/south
execute positioned -1515 45 -168 run function medabots_server:set_blocks/pot
execute positioned -1523 45 -172 run function medabots_server:set_blocks/stone
execute positioned -1523 45 -171 run function medabots_server:set_blocks/stone
execute positioned -1531 45 -159 run function medabots_server:set_blocks/glass
execute positioned -1562 45 -139 run function medabots_server:set_blocks/door/south/power_0
execute positioned -1563 45 -142 run function medabots_server:set_blocks/door/west/power_0
execute positioned -1560 45 -143 run function medabots_server:set_blocks/door/north/power_0
execute positioned -1559 45 -140 run function medabots_server:set_blocks/door/east/power_0
execute positioned -1516 45 -174 run function medabots_server:set_blocks/goal_area
execute positioned -1519 45 -171 run function medabots_server:set_blocks/starting_area
scoreboard players set @s StageVersion 5
function medabots_server:gamemodes/default/set_stats
teleport @s -1519 45 -171 0 0
bossbar set medabots_server:grassland_a/time value 0
bossbar set medabots_server:grassland_a/time players @s
tag @s add main
scoreboard players set @s Battle 1
scoreboard players set @s Stage 1
scoreboard players set @s Music 0
scoreboard players set @s MusicType 7