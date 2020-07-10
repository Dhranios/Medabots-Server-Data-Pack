execute positioned 35 53 4 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned 31 53 4 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned 50 53 5 run function medabots_server:spawn_entities/item/1_medallar_cent
execute positioned 31 53 8 run function medabots_server:spawn_entities/round_stone
execute positioned 27 53 9 run function medabots_server:spawn_entities/ice_block
execute positioned 31 53 11 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 50 53 25 run function medabots_server:spawn_entities/raft
execute positioned 41 53 26 run function medabots_server:spawn_entities/raft
execute positioned 31 53 26 run function medabots_server:spawn_entities/raft
execute positioned 56 53 21 run function medabots_server:set_blocks/laser_trap/west/delay_10/power_0
execute positioned 38 53 21 run function medabots_server:set_blocks/mirror/45
execute positioned 36 53 10 run function medabots_server:spawn_entities/bomb/delay_5
execute positioned 37 53 10 run function medabots_server:spawn_entities/bomb/delay_5
execute positioned 46 53 3 run function medabots_server:spawn_entities/rubberobo/south
execute positioned 57 53 10 run function medabots_server:spawn_entities/rubberobo/south
execute positioned 55 53 12 run function medabots_server:set_blocks/pot
execute positioned 47 53 8 run function medabots_server:set_blocks/stone
execute positioned 47 53 9 run function medabots_server:set_blocks/stone
execute positioned 39 53 21 run function medabots_server:set_blocks/glass
execute positioned 8 53 41 run function medabots_server:set_blocks/door/x/power_0
execute positioned 7 53 38 run function medabots_server:set_blocks/door/z/power_0
execute positioned 9 53 37 run function medabots_server:set_blocks/door/x/power_0
execute positioned 11 53 39 run function medabots_server:set_blocks/door/z/power_0
execute positioned 54 53 6 run function medabots_server:set_blocks/goal_area
execute positioned 51 53 9 run function medabots_server:set_blocks/starting_area
scoreboard players set @s StageVersion 5
function medabots_server:gamemodes/default/set_stats
teleport @s 51 53 9 0 0
bossbar set medabots_server:grassland_a/time value 0
bossbar set medabots_server:grassland_a/time players @s
tag @s add main
scoreboard players set @s State 1
scoreboard players set @s Stage 1
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 7