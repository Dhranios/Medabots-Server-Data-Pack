summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.spring_wall"}',Tags:["spring_wall","delay_8"],Duration:2147483647}
setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[distance=..0.7] run function medabots_server:blocks/tag_for_replacing_block
scoreboard players set @e[distance=..0.7] Time 40