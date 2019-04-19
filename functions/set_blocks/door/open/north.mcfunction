summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.door"}',Tags:["door","open"],Duration:2147483647}
setblock ~ ~ ~ minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock ~ ~1 ~ minecraft:redstone_block