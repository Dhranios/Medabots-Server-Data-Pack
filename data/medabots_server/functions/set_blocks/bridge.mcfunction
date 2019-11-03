summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.bridge"}',Tags:["bridge"],Duration:2147483647}
execute as @e[distance=..0.7,tag=bridge] run function medabots_server:blocks/tag_for_replacing_block
setblock ~ ~-1 ~ minecraft:oak_planks