# Freeze water
scoreboard players add @s Time 1
execute if entity @s[scores={Time=1..80}] run fill ~ ~ ~ ~ ~-1 ~ minecraft:frosted_ice[age=0] replace minecraft:water
execute if entity @s[scores={Time=81..160}] run fill ~ ~ ~ ~ ~-1 ~ minecraft:frosted_ice[age=1] replace minecraft:frosted_ice
execute if entity @s[scores={Time=161..240}] run fill ~ ~ ~ ~ ~-1 ~ minecraft:frosted_ice[age=2] replace minecraft:frosted_ice
execute if entity @s[scores={Time=241}] run fill ~ ~ ~ ~ ~-1 ~ minecraft:water[level=0] replace minecraft:frosted_ice
kill @s[scores={Time=242..}]