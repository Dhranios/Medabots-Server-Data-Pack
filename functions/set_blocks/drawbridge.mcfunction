summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.drawbridge"}',Tags:["drawbridge"],Duration:2147483647}
execute as @e[distance=..0.7,tag=drawbridge] run function medabots_server:blocks/drawbridge/scores
setblock ~ ~-1 ~ minecraft:oak_planks
setblock ~ ~1 ~ minecraft:black_stained_glass