summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.glass"}',Tags:["glass"],Duration:2147483647}
execute if block ~ ~-1 ~ minecraft:water run tag @e[distance=..0.7,tag=glass] add shallow_water
execute if block ~ ~-2 ~ minecraft:water run tag @e[distance=..0.7,tag=glass] add deep_water
execute if block ~ ~-1 ~ minecraft:air run tag @e[distance=..0.7,tag=glass] add crater
fill ~ ~ ~ ~ ~3 ~ minecraft:gray_stained_glass
execute if block ~ ~-1 ~ minecraft:water run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:gray_stained_glass
execute if block ~ ~-2 ~ minecraft:water run fill ~ ~-2 ~ ~ ~-2 ~ minecraft:gray_stained_glass
execute if block ~ ~-1 ~ minecraft:air run fill ~ 0 ~ ~ ~-1 ~ minecraft:gray_stained_glass replace minecraft:air