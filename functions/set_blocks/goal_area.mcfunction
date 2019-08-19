summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.goal_area"}',Tags:["goal_area"],Duration:2147483647}
execute as @e[distance=..0.7,tag=goal_area] run function medabots_server:blocks/tag_for_replacing_block
execute as @e[distance=..0.7,tag=goal_area] run function medabots_server:blocks/tag_for_replacing_higher_blocks
setblock ~ ~-1 ~ minecraft:bricks
setblock ~ ~ ~ minecraft:heavy_weighted_pressure_plate[power=1]
setblock ~ ~3 ~ minecraft:brick_slab[type=bottom]