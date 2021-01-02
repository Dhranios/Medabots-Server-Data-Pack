# Trigger
execute unless entity @s[scores={Stage=1..}] as @e[distance=..0.7,tag=enemy_medabot,limit=1,type=minecraft:armor_stand] positioned ~ ~3 ~ if entity @e[distance=..0.7,tag=door,type=minecraft:armor_stand,scores={Stage=1..},limit=1] run scoreboard players operation @s Stage = @e[distance=..0.7,tag=door,type=minecraft:armor_stand,limit=1] Stage
execute unless entity @s[scores={Stage=1..}] positioned ~ ~3 ~ if entity @e[distance=..0.7,tag=door,type=minecraft:armor_stand,scores={Stage=1..},limit=1] run scoreboard players operation @s Stage = @e[distance=..0.7,tag=door,type=minecraft:armor_stand,limit=1] Stage

scoreboard players operation #temp Stage = @s Stage

execute if entity @s[tag=east] positioned ~1 ~3 ~-2 as @a[scores={State=1},dx=3,dy=4,dz=3] if score @s Stage = #temp Stage positioned ~-1 ~-3 ~2 run tag @e[distance=..0.1,tag=mission,type=minecraft:armor_stand,limit=1] add trigger
execute if entity @s[tag=north] positioned ~-2 ~3 ~-4 as @a[scores={State=1},dx=3,dy=4,dz=3] if score @s Stage = #temp Stage positioned ~2 ~-3 ~4 run tag @e[distance=..0.1,tag=mission,type=minecraft:armor_stand,limit=1] add trigger
execute if entity @s[tag=south] positioned ~-2 ~3 ~1 as @a[scores={State=1},dx=3,dy=4,dz=3] if score @s Stage = #temp Stage positioned ~2 ~-3 ~-1 run tag @e[distance=..0.1,tag=mission,type=minecraft:armor_stand,limit=1] add trigger
execute if entity @s[tag=west] positioned ~-4 ~3 ~-2 as @a[scores={State=1},dx=3,dy=4,dz=3] if score @s Stage = #temp Stage positioned ~4 ~-3 ~2 run tag @e[distance=..0.1,tag=mission,type=minecraft:armor_stand,limit=1] add trigger

execute as @e[type=minecraft:area_effect_cloud,tag=mission] if score @s Stage = #temp Stage run tag @e[distance=..0.1,tag=mission,type=minecraft:armor_stand,limit=1] remove trigger

execute if entity @s[tag=trigger] run function medabots_server:entities/mission/builder