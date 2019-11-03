# Go to position to affect
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["me"]}
execute store result entity @e[type=minecraft:area_effect_cloud,tag=me,limit=1] Pos[0] double 1 run scoreboard players get @s HomeX
execute store result entity @e[type=minecraft:area_effect_cloud,tag=me,limit=1] Pos[1] double 1 run scoreboard players get @s HomeY
execute store result entity @e[type=minecraft:area_effect_cloud,tag=me,limit=1] Pos[2] double 1 run scoreboard players get @s HomeZ

# Power position if powered
execute at @e[type=minecraft:area_effect_cloud,tag=me,limit=1] positioned ~0.5 ~ ~0.5 run function medabots_server:blocks/floor_switch/custom_stage_target

kill @e[type=minecraft:area_effect_cloud,tag=me,limit=1]