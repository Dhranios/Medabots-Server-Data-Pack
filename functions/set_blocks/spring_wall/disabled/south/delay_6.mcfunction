summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.spring_wall"}',Tags:["spring_wall","delay_6"],Duration:2147483647}
setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock ~ ~1 ~ minecraft:redstone_block