summon minecraft:area_effect_cloud ~ ~ ~ {Duration:30,Tags:["move_target"]}
scoreboard players operation @e[distance=..0.2,tag=move_target] GuardNr = @s GuardNr
execute store result score @e[distance=..0.2,tag=move_target] HomeY run data get entity @s Pos[1]
execute as @e[distance=..0.2,tag=move_target] run function medabots_server:entities/guard/move_target