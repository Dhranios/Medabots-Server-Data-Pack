summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","south","delay_1","enabled"],Duration:2147483647}
setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[distance=..0.7,tag=hammer_punch] run function medabots_server:blocks/tag_for_replacing_block
execute as @e[distance=..0.7,tag=hammer_punch] run function medabots_server:blocks/tag_for_replacing_higher_blocks
scoreboard players add @e[distance=..0.7,tag=hammer_punch] Time 20
setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=false]