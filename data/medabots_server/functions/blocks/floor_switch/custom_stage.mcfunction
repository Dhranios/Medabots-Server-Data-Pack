# Go to position to affect
execute store result storage medabots_server:bound_object X int 1 run scoreboard players get @s HomeX
execute store result storage medabots_server:bound_object Y int 1 run scoreboard players get @s HomeY
execute store result storage medabots_server:bound_object Z int 1 run scoreboard players get @s HomeZ
execute store result storage medabots_server:bound_object Power int 1 run scoreboard players get @s PowerNeeded

# Go to position to affect
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["me"]}
execute as @e[type=minecraft:area_effect_cloud,tag=me,limit=1] run function medabots_server:blocks/floor_switch/custom_stage_move