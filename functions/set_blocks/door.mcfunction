summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.door"}',Tags:["door"],Duration:2147483647}
fill ~ ~2 ~ ~ ~3 ~ minecraft:barrier replace minecraft:air
scoreboard players set @e[distance=..0.7,tag=door] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=door] PowerAmount 0