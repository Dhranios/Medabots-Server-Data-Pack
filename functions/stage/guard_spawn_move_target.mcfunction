execute store result score @s HomeY run data get entity @s Pos[1]
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:30,Tags:["move_target"]}
scoreboard players operation @e[distance=..0.4,tag=move_target] GuardNr = @s GuardNr
scoreboard players operation @e[distance=..0.4,tag=move_target] HomeY = @s HomeY
execute as @e[distance=..0.2,tag=move_target] run function medabots_server:stage/guard_move_target