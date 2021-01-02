# Go to position to affect
execute store result storage medabots_server:data bound_object.x int 1 run scoreboard players get @s HomeX
execute store result storage medabots_server:data bound_object.y int 1 run scoreboard players get @s HomeY
execute store result storage medabots_server:data bound_object.z int 1 run scoreboard players get @s HomeZ
execute store result storage medabots_server:data bound_object.power int 1 run scoreboard players get @s PowerAmount

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["me"]}
execute as @e[type=minecraft:area_effect_cloud,tag=me,limit=1] run function medabots_server:blocks/bound_object_move