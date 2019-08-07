summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.glass"}',Tags:["glass"],Duration:2147483647}
execute if block ~ ~-1 ~ minecraft:air run tag @e[distance=..0.7,tag=glass] add crater
execute as @e[distance=..0.7,tag=glass] run function medabots_server:blocks/tag_for_replacing_higher_blocks
fill ~ ~ ~ ~ ~3 ~ minecraft:gray_stained_glass
fill ~ ~-1 ~ ~ ~-2 ~ minecraft:gray_stained_glass replace minecraft:water
execute if block ~ ~-1 ~ minecraft:air run fill ~ 0 ~ ~ ~-1 ~ minecraft:gray_stained_glass replace minecraft:air