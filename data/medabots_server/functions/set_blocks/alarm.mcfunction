summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.alarm"}',Tags:["alarm"],Duration:2147483647}
setblock ~ ~ ~ minecraft:black_concrete
setblock ~ ~1 ~ minecraft:barrier
scoreboard players set @e[distance=..0.7,tag=alarm] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=alarm] PowerAmount 0