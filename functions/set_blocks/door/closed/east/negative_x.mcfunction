summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.door"}',Tags:["door","negative_x"],Duration:2147483647}
setblock ~ ~ ~ minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock ~-1 ~ ~ minecraft:redstone_block
execute if block ~-1 ~1 ~ minecraft:air run setblock ~-1 ~ ~ minecraft:air
execute unless block ~-1 ~1 ~ minecraft:air run setblock ~-1 ~ ~ minecraft:barrier