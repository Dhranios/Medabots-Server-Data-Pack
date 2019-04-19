summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
setblock ~ ~ ~ minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock ~ ~1 ~ minecraft:redstone_block