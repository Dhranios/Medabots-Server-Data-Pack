summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.floor_switch"}',Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
execute as @e[distance=..0.7] run function medabots_server:blocks/tag_for_replacing_block
scoreboard players set @e[distance=..0.7] FloorSwitchTime 0
setblock ~ ~-1 ~ minecraft:blue_wool