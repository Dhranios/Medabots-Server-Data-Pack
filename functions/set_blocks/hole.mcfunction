summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.hole"}',Tags:["hole"],Duration:2147483647}
execute as @e[distance=..0.7,tag=hole] run function medabots_server:blocks/tag_for_replacing_block
setblock ~ ~-1 ~ minecraft:black_carpet
scoreboard players add @e[distance=..0.7,tag=hole] Time 0