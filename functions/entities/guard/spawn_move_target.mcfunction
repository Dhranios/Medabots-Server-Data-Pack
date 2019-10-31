summon minecraft:area_effect_cloud ~ ~ ~ {Duration:30,Tags:["move_target","this_move_target"]}
scoreboard players operation @e[distance=..0.2,tag=move_target,type=minecraft:area_effect_cloud] GuardNr = @s GuardNr
execute store result score @e[distance=..0.2,tag=move_target,type=minecraft:area_effect_cloud] HomeY run data get entity @s Pos[1]
execute as @e[distance=..0.2,tag=move_target,type=minecraft:area_effect_cloud] run function medabots_server:entities/guard/move_target