execute positioned ~ ~-2.7999 ~ run function medabots_server:spawn_entities/round_stone
execute positioned ~ ~-2.7999 ~ run scoreboard players operation @e[distance=..0.7,type=minecraft:armor_stand,tag=!action_floor,tag=round_stone] Moving = @s DelayTime
execute positioned ~ ~-2.7999 ~ run tag @e[distance=..0.7,type=minecraft:armor_stand,tag=!action_floor,tag=round_stone] add action_floor_moving