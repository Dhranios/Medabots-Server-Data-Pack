summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap"],Duration:2147483647}
setblock ~ ~ ~ minecraft:smooth_stone_slab[type=double]
scoreboard players set @e[distance=..0.7,tag=laser_trap] Time 0
scoreboard players set @e[distance=..0.7,tag=laser_trap] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=laser_trap] PowerAmount 0