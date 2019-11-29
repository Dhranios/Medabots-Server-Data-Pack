# Power position if powered
execute if entity @s[scores={Time=1..}] run scoreboard players operation @e[distance=..0.7,tag=!me] PowerAmount += @s PowerNeeded

kill @e[type=minecraft:area_effect_cloud,tag=me,limit=1]