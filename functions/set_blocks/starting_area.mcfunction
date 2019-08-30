summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.starting_area"}',Tags:["starting_area"],Duration:2147483647}
execute as @e[distance=..0.7,tag=starting_area] run function medabots_server:blocks/tag_for_replacing_block
execute as @e[distance=..0.7,tag=starting_area] run function medabots_server:blocks/tag_for_replacing_higher_blocks
setblock ~ ~-1 ~ minecraft:lapis_block
setblock ~ ~ ~ minecraft:heavy_weighted_pressure_plate[power=1]
setblock ~ ~3 ~ minecraft:smooth_quartz_slab[type=bottom]