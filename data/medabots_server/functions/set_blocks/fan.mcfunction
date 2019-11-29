summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.fan"}',Tags:["fan"],Duration:2147483647}
setblock ~ ~ ~ minecraft:oak_fence
scoreboard players set @e[distance=..0.7,tag=fan] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=fan] PowerAmount 0