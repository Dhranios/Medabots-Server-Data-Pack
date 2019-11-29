# Trigger
scoreboard players operation #temp Stage = @s Stage

execute if entity @s[tag=east] positioned ~1 ~3 ~-2 as @a[scores={Battle=1},dx=3,dy=4,dz=3] if score @s Stage = #temp Stage run tag @e[distance=..0.1,tag=mission,type=minecraft:armor_stand,limit=1] add trigger
execute if entity @s[tag=north] positioned ~-2 ~3 ~-4 as @a[scores={Battle=1},dx=3,dy=4,dz=3] if score @s Stage = #temp Stage run tag @e[distance=..0.1,tag=mission,type=minecraft:armor_stand,limit=1] add trigger
execute if entity @s[tag=south] positioned ~-2 ~3 ~1 as @a[scores={Battle=1},dx=3,dy=4,dz=3] if score @s Stage = #temp Stage run tag @e[distance=..0.1,tag=mission,type=minecraft:armor_stand,limit=1] add trigger
execute if entity @s[tag=west] positioned ~-4 ~3 ~-2 as @a[scores={Battle=1},dx=3,dy=4,dz=3] if score @s Stage = #temp Stage run tag @e[distance=..0.1,tag=mission,type=minecraft:armor_stand,limit=1] add trigger

execute as @e[type=minecraft:area_effect_cloud,tag=mission] if score @s Stage = #temp Stage run tag @e[distance=..0.1,tag=mission,type=minecraft:armor_stand,limit=1] remove trigger

execute if entity @s[tag=trigger] run function medabots_server:entities/mission/builder