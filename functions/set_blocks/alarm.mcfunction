summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.alarm"}',Tags:["alarm"],Duration:2147483647}
setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"medabots_server:stage/alarm",mode:"LOAD"}
setblock ~ ~1 ~ minecraft:redstone_block