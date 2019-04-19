summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.fan"}',Tags:["fan"],Duration:2147483647}
scoreboard players set @e[distance=..0.1,tag=fan] Moving 1
scoreboard players set @e[distance=..0.1,tag=fan] Range 11
setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"medabots_server:stage/fan",mode:"LOAD"}
setblock ~ ~1 ~ minecraft:redstone_block