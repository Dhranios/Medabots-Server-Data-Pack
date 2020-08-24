execute positioned ~ ~-2.7999 ~ run function medabots_server:spawn_entities/ice_block
execute positioned ~ ~-2.7999 ~ run scoreboard players operation @e[distance=..0.7,type=minecraft:armor_stand,tag=!action_floor,tag=ice_block] Moving = @s DelayTime
execute positioned ~ ~-2.7999 ~ run tag @e[distance=..0.7,type=minecraft:armor_stand,tag=!action_floor,tag=ice_block] add action_floor_moving