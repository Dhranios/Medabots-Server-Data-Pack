summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.door"}',Tags:["door","positive_z"],Duration:2147483647}
setblock ~ ~ ~ minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock ~ ~ ~1 minecraft:redstone_block
execute if block ~ ~1 ~1 minecraft:air run setblock ~ ~ ~1 minecraft:air
execute unless block ~ ~1 ~1 minecraft:air run setblock ~ ~ ~1 minecraft:barrier