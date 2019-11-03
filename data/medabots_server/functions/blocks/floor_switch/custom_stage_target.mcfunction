# Power position if powered
execute if entity @s[scores={Time=1..},tag=!negative] run scoreboard players operation @e[distance=..0.7] PowerAmount += @s PowerNeeded
execute if entity @s[scores={Time=1..},tag=!negative] run scoreboard players add @e[tag=fan,distance=..0.7,tag=!changed] Moving 1
execute if entity @s[scores={Time=1..},tag=!negative] run tag @e[tag=fan,distance=..0.7,tag=!changed] add changed
execute if entity @s[scores={Time=..0},tag=negative] run scoreboard players operation @e[distance=..0.7] PowerAmount += @s PowerNeeded
execute if entity @s[scores={Time=..0},tag=negative] run scoreboard players add @e[tag=fan,distance=..0.7,tag=!changed] Moving 1
execute if entity @s[scores={Time=..0},tag=negative] run tag @e[tag=fan,distance=..0.7,tag=!changed] add changed

kill @e[type=minecraft:area_effect_cloud,tag=me,limit=1]